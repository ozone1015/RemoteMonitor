class Input < ActiveRecord::Base
  attr_accessible :name, :node_id, :pin, :unit, :created_on, :updated_on
  belongs_to :node
  has_many :measurements
  
end
