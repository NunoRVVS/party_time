class Order < ApplicationRecord
  belongs_to :user
  belongs_to :party_item
end
