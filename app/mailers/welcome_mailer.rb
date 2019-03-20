class WelcomeMailer < ApplicationMailer
	default from: 'injustice.balance@gmail.com'
 
  def welcome_send(user)
    @user = user
    attachments.inline["nojustice.jpeg"] = File.read("#{Rails.root}/app/assets/images/nojustice.jpeg")
    @url  = 'www.justicefantome.fr'
    mail to: @user.email, subject: ' Bienvenue sur justice fantome '
  end
end
