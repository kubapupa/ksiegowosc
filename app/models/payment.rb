class Payment < ApplicationRecord
    validates :username, presence: :true
    validates :value, presence: :true
end
