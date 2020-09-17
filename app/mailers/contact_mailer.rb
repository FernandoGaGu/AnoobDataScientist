class ContactMailer < ApplicationMailer
	def new_contact_email
		@contact = params[:contact]
		
		mail(to: 'a.noob.data.scientist.ca@gmail.com', subject: "You got a new contact!")
	end

end
