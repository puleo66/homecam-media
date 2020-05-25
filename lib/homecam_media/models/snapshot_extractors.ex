defmodule HomecamMedia.Models.SnapshotExtractors do
  use Ecto.Schema
  import Ecto.Changeset
  alias HomecamMedia.Models.Cameras

  schema "snapshot_extractors" do
    field :from_date, :utc_datetime
    field :to_date, :utc_datetime
    field :notes, :string
    field :created_at, :utc_datetime
    field :updated_at, :utc_datetime
    field :requestor, :string
    field :interval, :integer
    field :status, :integer, default: 0
    field :schedule, HomecamMedia.Types.JSON
    field :inject_to_cr, :boolean, default: false
    field :create_mp4, :boolean, default: false
    field :jpegs_to_dropbox, :boolean, default: false

    belongs_to :camera, Cameras
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :camera_id, 
        :from_date, 
        :to_date, 
        :interval, 
        :schedule, 
        :status, 
        :notes, 
        :created_at, 
        :updated_at, 
        :requestor, 
        :inject_to_cr, 
        :create_mp4, 
        :jpegs_to_dropbox
      ])
  end
end
