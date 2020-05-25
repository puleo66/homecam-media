defmodule HomecamMedia.Models.Timelapses do
  use Ecto.Schema
  import Ecto.Changeset
  alias HomecamMedia.Models.Cameras
  alias HomecamMedia.Models.Users

  schema "timelapses" do
    field :exid, :string, limit: 255, null: false 
    field :title, :string, limit: 255, null: false 
    field :resolution, :string, limit: 255
    field :from_datetime, :utc_datetime 
    field :to_datetime, :utc_datetime 
    field :watermark_logo, :string
    field :watermark_position, :string, limit: 255
    field :last_snapshot_at, :utc_datetime 
    field :inserted_at, :utc_datetime 
    field :updated_at, :utc_datetime
    field :frequency, :integer
    field :snapshot_count, :integer, default: 0
    field :status, :integer
    field :date_always, :boolean, default: false
    field :time_always, :boolean, default: false
    field :recreate_hls, :boolean, default: false
    field :start_recreate_hls, :boolean, default: false
    field :hls_created, :boolean, default: false
    field :extra, HomecamMedia.Types.JSON

    belongs_to :camera, Cameras
    belongs_to :user, Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :camera_id, 
        :exid, 
        :title, 
        :frequency, 
        :snapshot_count, 
        :resolution, 
        :status, 
        :date_always, 
        :from_datetime, 
        :time_always, 
        :to_datetime, 
        :watermark_logo, 
        :watermark_position, 
        :recreate_hls, 
        :start_recreate_hls, 
        :hls_created, 
        :last_snapshot_at, 
        :inserted_at, 
        :updated_at, 
        :user_id, 
        :extra
      ])
  end
end
