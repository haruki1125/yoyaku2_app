class Message < ApplicationRecord
  with_options presence: true do
    validates :message
  end

end
