defmodule HomecamMedia.Models.Billing do
  use Ecto.Schema
  import Ecto.Changeset
  alias HomecamMedia.Models.Users

  schema "billing" do
    field :created_at, :utc_datetime
    field :updated_at, :utc_datetime
    field :timelapse, :integer
    field :snapmail, :integer

    belongs_to :user, Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :user_id, 
        :timelapse, 
        :snapmail, 
        :created_at, 
        :updated_at
      ])
  end
end
