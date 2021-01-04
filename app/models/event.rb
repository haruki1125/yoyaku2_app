class Event < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :start_time
    validates :phone_number
    validates :member
  end
end
