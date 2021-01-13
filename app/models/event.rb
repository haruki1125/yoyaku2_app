class Event < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :phone_number
    validates :member
    validates :content
  end
end
