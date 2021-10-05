class Retailer < ApplicationRecord
    has_many :books, as: :owner
end
