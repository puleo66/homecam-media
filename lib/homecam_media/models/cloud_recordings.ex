defmodule HomecamMedia.Models.CloudRecordings do
  use Ecto.Schema
  import Ecto.Changeset
  alias HomecamMedia.Models.Cameras

  schema "cloud_recordings" do
    field :status, :string
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
        :status
      ])
  end
end
