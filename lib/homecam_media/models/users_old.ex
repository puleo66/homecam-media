defmodule HomecamMedia.Models.UsersOld do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users_old" do
    field :created_at, :utc_datetime
    field :updated_at, :utc_datetime
    field :firstname, :string, null: false
    field :lastname, :string, null: false
    field :username, :string, null: false
    field :password, :string, null: false
    field :confirmed_at, :utc_datetime
    field :email, :string, null: false
    field :reset_token, :string
    field :token_expires_at, :utc_datetime
    field :api_id, :string
    field :api_key, :string
    field :stripe_customer_id, :string
    field :billing_id, :string
    field :last_login_at, :utc_datetime
    field :vat_number, :string
    field :insight_id, :string
    field :country_id, :integer
    field :payment_method, :integer, default: 0
    field :is_admin, :boolean, default: true

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :created_at, 
        :updated_at, 
        :firstname, 
        :lastname, 
        :username, 
        :password, 
        :country_id, 
        :confirmed_at, 
        :email, 
        :reset_token, 
        :token_expires_at, 
        :api_id, 
        :api_key, 
        :is_admin, 
        :stripe_customer_id, 
        :billing_id, 
        :last_login_at, 
        :vat_number, 
        :payment_method, 
        :insight_id
      ])
  end
end
