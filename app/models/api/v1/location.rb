class Api::V1::Location < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :total, presence: true
    validates :white_total, presence: true
    validates :latinx_total, presence: true
    validates :black_total, presence: true
    validates :black_pop, presence: true
    validates :black_deaths, presence: true
    validates :black_likely, presence: true
    validates :latinx_likely, presence: true 
end