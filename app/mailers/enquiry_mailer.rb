class EnquiryMailer < ActionMailer::Base
  default from: "shalinidal@gmail.com"

  def enquiry_email(enquirer)
  	@enquirer = enquirer
  	# @users = User.all
  	# @users_emails = @users.map(&:email)

  	mail(:bcc => "shalinidal@gmail.com", :subject => "Website enquiry")
  end

end
