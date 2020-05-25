defmodule HomecamMedia.Models.SnapmailCameras do
  use Ecto.Schema
  import Ecto.Changeset
  alias HomecamMedia.Models.Snapmails
  alias HomecamMedia.Models.Cameras

  schema "snapmail_cameras" do
    field :inserted_at, :utc_datetime
    field :updated_at, :utc_datetime

    belongs_to :snapmail, Snapmails
    belongs_to :camera, Cameras
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :snapmail_id, 
        :camera_id, 
        :inserted_at, 
        :updated_at
      ])
  end
end
