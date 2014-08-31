class ContactMe < ActionMailer::Base
  default from: "api@samples.mailgun.org"
  

  def forward_email(name, phone, email, message)
    @name = name
    @phone = phone
    @email = email
    @message = message
    mail(to: 'zoebalkwell@gmail.com', subject: "Contact me@zoebalkwell.co.uk from: #{name}")
  end
end
