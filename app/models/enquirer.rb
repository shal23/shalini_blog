class Enquirer < ActiveRecord::Base
  attr_accessible :email, :message, :name, :phone, :message_type
end
