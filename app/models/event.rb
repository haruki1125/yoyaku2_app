class Event < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :start_time
    validates :phone_number
    validates :member
  end
  with_options format: {/\A[0-9]+\z/} do
    validates :phone_number
    validates :member
  end
end
