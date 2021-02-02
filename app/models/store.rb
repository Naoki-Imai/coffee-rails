class Store < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :name
    validates :body
    validates :address
  end
end
