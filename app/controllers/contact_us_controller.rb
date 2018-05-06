class ContactUsController < ApplicationController
  def create
    @message = ContactMessage.new(contact_params)
    if @message.valid?
      ContactMailer.contact_email_generate(@message).deliver_now
     redirect_to root_path
     flash[:success] = "Thank you for contacting me! I'll respond within the hour."
    else
      render :template => 'static_pages/home'

    end
  end


  private
  def contact_params
    params.require(:contacts).permit(:name, :email, :message)
  end

end
