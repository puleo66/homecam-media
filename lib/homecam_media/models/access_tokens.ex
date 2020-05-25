defmodule HomecamMedia.Models.AccessTokens do
  use Ecto.Schema
  import Ecto.Changeset
  alias HomecamMedia.Models.Users

  schema "access_tokens" do
    field :created_at, :utc_datetime 
    field :updated_at, :utc_datetime 
    field :expires_at, :utc_datetime 
    field :request, :string
    field :refresh, :string
    field :grantor_id, :integer
    field :client_id, :integer
    field :is_revoked, :boolean, default: false

    belongs_to :user, Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :created_at, 
        :updated_at, 
        :expires_at, 
        :is_revoked, 
        :user_id, 
        :client_id, 
        :request, 
        :refresh, 
        :grantor_id
      ])
  end
end
