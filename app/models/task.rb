class Task < ApplicationRecord
    mount_uploader :picture, ImageUploader
    has_many :posts, dependent: :destroy
end
