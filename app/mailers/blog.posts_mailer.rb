class EnquiryMailer < ActionMailer::Base
	default from: "shalinidal@gmail.com"

  def blog.posts_email(blogger)
  	@blogger = blogger
  	 @users = User.all
  	 @users_emails = @users.map(&:email)

  	mail(:bcc => "shalinidal@gmail.com", :subject => "Updates on Blog posts")
  end

end