class Actuator < ActiveRecord::Base
  belongs_to :node
  belongs_to :actuatorType
end
