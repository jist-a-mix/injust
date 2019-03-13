class Contact 
include ActiveModel::Model

 
  attr_accessor :prenom, :nom, :email, :message
 
  validates :prenom, :nom, :email, :message, presence: true
  
 

def persisted?
  false
end
 


end