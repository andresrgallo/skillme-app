class Category < ApplicationRecord
    mount_uploader :avatar, AvatarUploader
    before_save do |category|
        category.description = category.description.downcase.titleize
      end
end
