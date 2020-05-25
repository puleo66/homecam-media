defmodule HomecamMedia.Models.VendorModels do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vendor_models" do
    field :created_at, :utc_datetime
    field :updated_at, :utc_datetime
    field :name, :string, null: false 
    field :exid, :string, default: "", null: false
    field :jpg_url, :string, default: "", null: false
    field :h264_url, :string, default: "", null: false
    field :mjpg_url, :string, default: "", null: false
    field :shape, :string, default: "" 
    field :resolution, :string, default: "" 
    field :official_url, :string, default: "" 
    field :audio_url, :string, default: "" 
    field :more_info, :string, default: "" 
    field :username, :string
    field :password, :string
    field :channel, :integer
    field :vendor_id, :integer
    field :poe, :boolean, default: false
    field :wifi, :boolean, default: false
    field :onvif, :boolean, default: false
    field :psia, :boolean, default: false
    field :ptz, :boolean, default: false
    field :infrared, :boolean, default: false
    field :varifocal, :boolean, default: false
    field :sd_card, :boolean, default: false
    field :upnp, :boolean, default: false
    field :audio_io, :boolean, default: false
    field :discontinued,:boolean, default: false
    field :config, HomecamMedia.Types.JSON

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :created_at, 
        :updated_at, 
        :vendor_id, 
        :name, 
        :config, 
        :exid, 
        :jpg_url, 
        :h264_url, 
        :mjpg_url, 
        :shape, 
        :resolution, 
        :official_url, 
        :audio_url, 
        :more_info, 
        :poe, 
        :wifi, 
        :onvif, 
        :psia, 
        :ptz, 
        :infrared, 
        :varifocal, 
        :sd_card, 
        :upnp, 
        :audio_io, 
        :discontinued, 
        :username, 
        :password, 
        :channel
      ])
  end
end
