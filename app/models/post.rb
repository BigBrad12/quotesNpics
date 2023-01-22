class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :pic, ImageUploader
  validate :picture_size

  private
  def picture_size
    if pic.size > 9.megabytes
      errors.add(:pic, "Picture is over 9MB, too big")
    end
  end
end