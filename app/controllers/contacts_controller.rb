class ContactsController < ApplicationController

 
  def new
    @contact = Contact.new
  end
 
  def create
    @contact = Contact.new(contact_params)
 if verify_recaptcha(model: @contact) && @contact.valid?
    
      ContactMailer.contact_me(@contact).deliver_now # Je vais expliquer cette ligne juste après...
      redirect_to new_contact_url
       flash[:notice] = "Message envoye"
    else
      render :new
      flash[:alert] = "Message  non envoye"
    end
  end
  private
  def contact_params

 params.require(:contact).permit(:prenom, :nom,  :email, :message)
end
end
