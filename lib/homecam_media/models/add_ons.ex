defmodule HomecamMedia.Models.AddOns do
  use Ecto.Schema
  import Ecto.Changeset
  alias HomecamMedia.Models.Users

  schema "add_ons" do
    field :add_ons_name, :string, null: false
    field :period, :string, null: false
    field :add_ons_start_date, :utc_datetime
    field :add_ons_end_date, :utc_datetime
    field :price, :float, null: false
    field :created_at, :utc_datetime
    field :updated_at, :utc_datetime
    field :exid, :string, null: false
    field :invoice_item_id, :string, null: false
    field :status, :boolean, default: false

    belongs_to :user, Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :user_id, 
        :add_ons_name, 
        :period, 
        :add_ons_start_date, 
        :add_ons_end_date, 
        :status, 
        :price, 
        :created_at, 
        :updated_at, 
        :exid, 
        :invoice_item_id
      ])
  end
end
