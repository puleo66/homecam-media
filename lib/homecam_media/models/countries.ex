defmodule HomecamMedia.Models.Countries do
  use Ecto.Schema
  import Ecto.Changeset

  schema "countries" do
    field :created_at, :utc_datetime 
    field :updated_at, :utc_datetime
    field :iso3166_a2, :string, null: false
    field :name, :string

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :created_at, 
        :updated_at, 
        :iso3166_a2, 
        :name
      ])
  end
end
