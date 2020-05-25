defmodule HomecamMedia.Models.AccessRights do
  use Ecto.Schema
  import Ecto.Changeset
  alias HomecamMedia.Models.Cameras

  schema "access_rights" do
    field :created_at, :utc_datetime
    field :updated_at, :utc_datetime
    field :right, :string
    field :status, :integer, default: 1
    field :scope, :string, limit: 100
    field :token_id, :integer 
    field :grantor_id, :integer
    field :snapshot_id, :integer
    field :accound_id, :integer

    belongs_to :camera, Cameras
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :created_at, 
        :updated_at, 
        :token_id, 
        :right, 
        :camera_id, 
        :grantor_id, 
        :status, 
        :snapshot_id, 
        :account_id, 
        :scope
      ])
  end
end
