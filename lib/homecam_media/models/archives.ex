defmodule HomecamMedia.Models.Archives do
  use Ecto.Schema
  import Ecto.Changeset
  alias HomecamMedia.Models.Cameras
  alias HomecamMedia.Models.Users

  schema "archives" do
    field :exid, :string, null: false
    field :title, :string, null: false
    field :from_date, :utc_datetime
    field :to_date, :utc_datetime
    field :created_at, :utc_datetime
    field :url, :string, limit: 255
    field :file_name, :string, limit: 255
    field :status, :integer, null: false
    field :frames, :integer, default: 0
    field :embed_time, :boolean
    field :public, :boolean

    belongs_to :camera, Cameras
    belongs_to :requested_by, Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :camera_id, 
        :exid, :title, 
        :from_date, 
        :to_date, 
        :status, 
        :created_at, 
        :requested_by, 
        :embed_time, 
        :public, 
        :frames, 
        :url, 
        :file_name
      ])
  end
end
