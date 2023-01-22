class Uppy < ApplicationRecord
  mount_uploader :wallpaper, ImageUploader
  belongs_to :user
  validate :file_size
  serialize :pic, JSON
  private
  def file_size
    if wallpaper.size > 5.megabytes
      errors.add(:wallpaper, "File size too large")
    end
  end
end
