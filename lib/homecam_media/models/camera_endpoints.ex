defmodule HomecamMedia.Models.CameraEndpoints do
  use Ecto.Schema
  import Ecto.Changeset
  alias HomecamMedia.Models.Cameras

  schema "camera_endpoints" do
    field :scheme, :string
    field :host, :string
    field :port, :integer

    belongs_to :camera, Cameras
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :camera_id, 
        :scheme, 
        :host, 
        :port
      ])
  end
end
