# frozen_string_literal: true

class RailwayStation < ApplicationRecord
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :railway_stations_tickets
  has_many :tickets, through: :railway_stations_tickets
  has_many :trains
  validates :title, presence: true
end
