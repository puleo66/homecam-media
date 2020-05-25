defmodule HomecamMedia.Models.Cameras do
  use Ecto.Schema
  import Ecto.Changeset

  schema "cameras" do
    field :created_at, :utc_datetime
    field :updated_at, :utc_datetime
    field :exid, :string
    field :name, :string
    field :last_polled_at, :utc_datetime
    field :timezone, :string
    field :last_online_at, :utc_datetime
    field :thumbnail_url, :string
    field :alert_emails, :string
    field :is_online, :boolean, default: false
    field :is_public, :boolean, default: false
    field :is_online_email_owner_notification, :boolean, default: false
    field :discoverable, :boolean, default: false
    field :config, HomecamMedia.Types.JSON
    field :mac_address, EctoNetwork.MACADDR
    field :location, :integer

    belongs_to :owner, User, foreign_key: :owner_id
    belongs_to :vendor_model, VendorModel, foreign_key: :model_id

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :created_at, 
        :updated_at, 
        :exid, 
        :owner_id, 
        :is_public, 
        :config, 
        :name, 
        :last_polled_at, 
        :is_online, 
        :timezone, 
        :last_online_at, 
        :location, 
        :mac_address, 
        :model_id, 
        :discoverable, 
        :thumbnail_url, 
        :is_online_email_owner_notification, 
        :alert_emails
      ])
  end
end
