defmodule HomecamMedia.Models.Compares do
  use Ecto.Schema
  import Ecto.Changeset
  alias HomecamMedia.Models.Cameras
  alias HomecamMedia.Models.Users

  schema "compares" do
    field :exid, :string, limit: 255
    field :name, :string, limit: 255
    field :before_date, :utc_datetime
    field :after_date, :utc_datetime
    field :embed_code, :string, limit: 255
    field :inserted_at, :utc_datetime
    field :updated_at, :utc_datetime
    field :create_animation, :boolean, default: false
    field :status, :integer, default: 0

    belongs_to :camera, Cameras
    belongs_to :requested_by, Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :exid, 
        :name, 
        :before_date, 
        :after_date, 
        :embed_code, 
        :camera_id, 
        :inserted_at, 
        :updated_at, 
        :create_animation, 
        :status, 
        :requested_by
      ])
  end
end
