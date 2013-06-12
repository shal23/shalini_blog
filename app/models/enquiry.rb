class Enquiry < ActiveRecord::Base
  attr_accessible :email, :join_mailing_list, :message, :name, :subject

  validates :name, :presence => true
  validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true
  validates :subject, :presence => true,
   			:length => { :minimum => 5 }


def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
end