class ContactMailer < ApplicationMailer
	def contact_me(contact)
		@email = contact.email
		@nom = contact.nom
		@prenom = contact.prenom
    @message = contact.message

    mail to: "injustice.balance@gmail.com", subject:"Nouveau message d'un utilisateur", from: contact.email
  end
end
