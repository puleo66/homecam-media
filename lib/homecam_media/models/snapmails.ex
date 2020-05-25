defmodule HomecamMedia.Models.Snapmails do
  use Ecto.Schema
  import Ecto.Changeset
  alias HomecamMedia.Models.Users

  schema "snapmails" do
    field :exid, :string, limit: 255, null: false 
    field :subject, :string, null: false 
    field :recipients, :string
    field :message, :string
    field :notify_days, :string, limit: 255 
    field :notify_time, :string, limit: 255, null: false
    field :inserted_at, :utc_datetime 
    field :updated_at, :utc_datetime 
    field :timezone, :string
    field :is_public, :boolean, default: false
    field :is_paused, :boolean, default: false


    belongs_to :user, Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :exid, 
        :subject, 
        :recipients, 
        :message, 
        :notify_days, 
        :notify_time, 
        :is_public, 
        :user_id, 
        :inserted_at, 
        :updated_at, 
        :timezone, 
        :is_paused
      ])
  end
end
