class Post < ApplicationRecord
    validates :name, presence: true
    validates :old, presence: true
    validates :sex, presence: true
    validates :job, presence: true
    validates :email, presence: true
    validates :content, presence: true
end
