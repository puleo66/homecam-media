defmodule HomecamMedia.Models.Users do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
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
    field :stripe_customer_id
    field :billing_id, :string
    field :last_login_at, :utc_datetime 
    field :vat_number, :string
    field :insight_id, :string
    field :encrypted_password, :string, default: ""
    field :reset_password_token, :string
    field :reset_password_sent_at, :utc_datetime 
    field :remember_created_at, :utc_datetime 
    field :current_sign_in_at, :utc_datetime 
    field :last_sign_in_at, :utc_datetime 
    field :telegram_username, :string
    field :country_id, :integer
    field :payment_method, :integer, default: 0
    field :sign_in_count, :integer, default: 0
    field :is_admin, :boolean, default: true
    field :current_sign_in_ip, EctoNetwork.INET
    field :last_sign_in_ip, EctoNetwork.INET

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
        :insight_id, 
        :encrypted_password, 
        :reset_password_token, 
        :reset_password_sent_at, 
        :remember_created_at, 
        :sign_in_count, 
        :current_sign_in_at, 
        :last_sign_in_at, 
        :current_sign_in_ip, 
        :last_sign_in_ip, 
        :telegram_username
      ])
  end
end
