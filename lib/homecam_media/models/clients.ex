defmodule HomecamMedia.Models.Clients do
  use Ecto.Schema
  import Ecto.Changeset

  schema "clients" do
    field :created_at, :utc_datetime
    field :updated_at, :utc_datetime
    field :callback_uris, :string
    field :api_id, :string, null: false
    field :api_key, :string
    field :name, :string
    field :settings, :string

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :created_at, 
        :updated_at, 
        :api_id, 
        :callback_uris, 
        :api_key, 
        :name, 
        :settings
      ])
  end
end
