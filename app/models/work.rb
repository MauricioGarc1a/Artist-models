class Work < ActiveRecord::Base
  belongs_to :artist
  has_and_belongs_to_many :genres

  accepts_nested_attributes_for :artist
end
