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
			flash.now[:success] = "Contact form successful!!"
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
