class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :pic, ImageUploader
  
  validate :picture_size
  serialize :pic, JSON
  private
  def picture_size
    if pic.size > 5.megabytes
      errors.add(:pic, "Picture is over 5MB, too big")
    end
  end
end