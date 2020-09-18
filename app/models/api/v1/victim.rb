class Api::V1::Victim < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :age, presence: true
    validates :when, presence: true
    validates :place, presence: true
    validates :details, presence: true
end
