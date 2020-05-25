defmodule HomecamMedia.Models.Vendors do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vendors" do
    field :created_at, :utc_datetime
    field :updated_at, :utc_datetime
    field :exid, :string
    field :known_macs, :string, null: false, array: true 
    field :name, :string, null: false

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :created_at, 
        :updated_at, 
        :exid, 
        :known_macs, 
        :name
      ])
  end
end
