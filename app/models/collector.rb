class Collector < ApplicationRecord
    has_many :books, as: :owner
end
