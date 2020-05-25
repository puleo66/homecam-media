defmodule HomecamMedia.Models.CameraShares do
  use Ecto.Schema
  import Ecto.Changeset
  alias HomecamMedia.Models.Cameras
  alias HomecamMedia.Models.Users

  schema "camera_shares" do
    field :kind, :string, limit: 50
    field :created_at, :utc_datetime
    field :updated_at, :utc_datetime
    field :message, :string
    field :sharer_id, :integer

    belongs_to :camera, Cameras
    belongs_to :user, Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :camera_id, 
        :user_id, 
        :sharer_id, 
        :kind, 
        :created_at, 
        :updated_at, 
        :message
      ])
  end
end
