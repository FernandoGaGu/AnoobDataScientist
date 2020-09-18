class ContactsController < ApplicationController
	def index		
	end
	def show
	end
	def new
		@contact = Contact.new(params[:contact])
	end	
	def create
		@contact = Contact.new(contact_params)
		if @contact.save 	# successful save
			# send contact form to email
			ContactMailer.with(contact: @contact).new_contact_email.deliver_later
			
			flash.now[:success] = "The contact request has been processed correctly. Thank you for your time!"
			render 'index'
		else
			render 'new'
		end
	end

	private

	def contact_params
	  params.require(:contact).permit(:name, :email, :message)
	end
end
