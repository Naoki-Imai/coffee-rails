class Store < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader

  with_options presence: true do
    validates :name
    validates :body
    validates :address
  end
end
