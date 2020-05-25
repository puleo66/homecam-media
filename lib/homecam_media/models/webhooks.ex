defmodule HomecamMedia.Models.Webhooks do
  use Ecto.Schema
  import Ecto.Changeset
  alias HomecamMedia.Models.Cameras
  alias HomecamMedia.Models.Users

  schema "webhooks" do
    field :url, :string, null: false 
    field :exid, :string
    field :created_at, :utc_datetime 
    field :updated_at, :utc_datetime 

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
        :url, 
        :exid, 
        :created_at, 
        :updated_at
      ])
  end
end
