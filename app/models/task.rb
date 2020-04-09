class Task < ApplicationRecord
    validates :name, presence: true
    validates :address, presence: true
    validates :time, presence: true
    validates :week, presence: true
    validates :content, presence: true
    
end
