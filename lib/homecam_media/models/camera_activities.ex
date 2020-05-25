defmodule HomecamMedia.Models.CameraActivities do
  use Ecto.Schema
  import Ecto.Changeset
  alias HomecamMedia.Models.Cameras

  schema "camera_activities" do
    field :action, :string, null: false
    field :done_at, :utc_datetime
    field :camera_exid, :string
    field :name, :string
    field :ip, EctoNetwork.INET
    field :extra, HomecamMedia.Types.JSON
    field :access_token_id, :integer

    belongs_to :camera, Cameras
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :camera_id, 
        :access_token_id, 
        :action, 
        :done_at, 
        :ip, 
        :extra, 
        :camera_exid, 
        :name
      ])
  end
end
