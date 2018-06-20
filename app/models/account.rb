class Account < ApplicationRecord
    validates :number, presence: true, length: { minimum: 7, maximum: 10 }
end