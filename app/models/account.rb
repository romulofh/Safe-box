class Account < ApplicationRecord
    belongs_to :user
    validates :number, presence: true, length: { minimum: 7, maximum: 10 }
end