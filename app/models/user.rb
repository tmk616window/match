class User < ApplicationRecord
    has_secure_password
    validates :name, presence: true, length: { maximum: 50 }
    validates :email, presence: true, uniqueness: true 


    mount_uploader :icon, ImageUploader
end
