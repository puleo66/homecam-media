defmodule HomecamMedia.Models.Apps do
  use Ecto.Schema
  import Ecto.Changeset
  alias HomecamMedia.Models.Cameras

  schema "apps" do
    field :local_recording, :boolean, default: false
    field :cloud_recording, :boolean, default: false
    field :motion_detection, :boolean, default: false
    field :watermark, :boolean, default: false

    belongs_to :camera, Cameras
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :camera_id, 
        :local_recording, 
        :cloud_recording, 
        :motion_detection, 
        :watermark
      ])
  end
end
