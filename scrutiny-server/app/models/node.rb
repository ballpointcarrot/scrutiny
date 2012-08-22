class Node < ActiveRecord::Base
  attr_accessible :name, :key

  validates_presence_of :name, :key
end
