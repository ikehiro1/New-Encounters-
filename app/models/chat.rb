class Chat < ApplicationRecord
    belongs_to :room
    #belongs_to :user
    belongs_to :sender, class_name:'User'
end
