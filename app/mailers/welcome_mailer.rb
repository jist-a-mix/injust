class WelcomeMailer < ApplicationMailer
	default from: 'injustice.balance@gmail.com'
 
  def welcome_send(user)
    @user = user
    attachments.inline["nojustice.jpeg"] = File.read("#{Rails.root}/app/assets/images/nojustice.jpeg")
    @url  = 'https://injustice-world.herokuapp.com'
    mail to: @user.email, subject: ' Welcome to injustice world '
  end
end
