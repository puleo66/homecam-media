defmodule HomecamMedia.Models.MotionDetections do
  use Ecto.Schema
  import Ecto.Changeset
  alias HomecamMedia.Models.Cameras

  schema "motion_detections" do
    field :emails, :string, array: true
    field :schedule, HomecamMedia.Types.JSON
    field :enabled, :boolean, default: false
    field :alert_email, :boolean, default: false
    field :frequency, :integer
    field :minPosition, :integer
    field :step, :integer
    field :min, :integer
    field :threshold, :integer
    field :alert_interval_min, :integer
    field :sensitivity, :integer
    field :x1, :integer
    field :y1, :integer
    field :x2, :integer
    field :y2, :integer

    belongs_to :camera, Cameras
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(
      params, [
        :id, 
        :camera_id, 
        :frequency, 
        :minPosition, 
        :step, 
        :min, 
        :threshold, 
        :schedule, 
        :enabled, 
        :alert_email, 
        :alert_interval_min, 
        :sensitivity, 
        :x1, 
        :y1, 
        :x2, 
        :y2, 
        :emails
      ])
  end
end
