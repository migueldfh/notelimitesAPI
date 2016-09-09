class Event < ApplicationRecord
  #belongs_to :place
  #belongs_to :access_type
  #belongs_to :event_type
  has_one :attending_list
  has_many :images
  has_many :event_url
  has_many :artist
end
