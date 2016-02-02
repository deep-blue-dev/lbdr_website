class ContactMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def contact_us()
    @name = name
    @email  = email
    @body = body
    mail(to: @user.email, subject: 'Website Inquriy')
  end
end
