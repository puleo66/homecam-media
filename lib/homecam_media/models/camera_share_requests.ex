defmodule HomecamMedia.Models.CameraShareRequests do
  use Ecto.Schema
  import Ecto.Changeset
  alias HomecamMedia.Models.Cameras
  alias HomecamMedia.Models.Users

  schema "camera_share_requests" do
    field :key, :string, limit: 100
    field :email, :string, limit: 250
    field :rights, :string, limit: 1000
    field :created_at, :utc_datetime 
    field :updated_at, :utc_datetime 
    field :message, :string
    field :status, :integer

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
        :key, 
        :email, 
        :status, 
        :rights, 
        :created_at, 
        :updated_at, 
        :message
      ])
  end
end
