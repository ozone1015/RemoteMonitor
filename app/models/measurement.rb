class Measurement < ActiveRecord::Base
  attr_accessible :input_id, :value, :raw, :created_on, :updated_on
  belongs_to :input
end
