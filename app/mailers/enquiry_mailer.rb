class EnquiryMailer < ActionMailer::Base
  default from: "shalini.dal@gmail.com"

  def enquiry_email(enquirer)
  	@enquirer = enquirer
  	mail(:to => "shalinidal@gmail.com", :subject => "Website enquiry")
  end

end
