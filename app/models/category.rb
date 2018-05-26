class Category < ApplicationRecord
    has_many :lessons, dependent: :destroy
    mount_uploader :avatar, AvatarUploader
    before_save do |category|
        category.description = category.description.downcase.titleize
      end
end
