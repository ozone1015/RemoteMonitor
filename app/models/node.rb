class Node < ActiveRecord::Base
  attr_accessible :name, :user_id, :created_on, :updated_on
  belongs_to :user
  has_many :inputs
  
end
