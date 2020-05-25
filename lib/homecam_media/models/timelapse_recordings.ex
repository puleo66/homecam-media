defmodule HomecamMedia.Models.TimelapseRecordings do
  use Ecto.Schema
  import Ecto.Changeset
  alias HomecamMedia.Models.Cameras

  schema "timelapse_recordings" do
    field :status, :string
    field :inserted_at, :utc_datetime
    field :updated_at, :utc_datetime
    field :frequency, :integer
    field :storage_duration, :integer
    field :schedule, HomecamMedia.Types.JSON

    belongs_to :camera, Cameras
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :camera_id, 
        :frequency, 
        :storage_duration, 
        :schedule, 
        :status, 
        :inserted_at, 
        :updated_at
      ])
  end
end
