defmodule HomecamMedia.Models.Licences do
  use Ecto.Schema
  import Ecto.Changeset
  alias HomecamMedia.Models.Users

  schema "licences" do
    field :description, :string, null: false 
    field :amount, :float
    field :start_date, :utc_datetime
    field :end_date, :utc_datetime
    field :created_at, :utc_datetime
    field :subscription_id, :string
    field :auto_renew_at, :utc_datetime
    field :paid, :boolean, default: false
    field :vat, :boolean, default: false
    field :cancel_licence, :boolean, default: false
    field :auto_renew, :boolean, default: false
    field :total_cameras, :integer
    field :storage, :integer
    field :vat_number, :integer


    belongs_to :user, Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :user_id, 
        :description, 
        :total_cameras, 
        :storage, 
        :amount, 
        :paid, 
        :vat, 
        :vat_number, 
        :start_date, 
        :end_date, 
        :created_at, 
        :cancel_licence, 
        :subscription_id, 
        :auto_renew, 
        :auto_renew_at
      ])
  end
end
