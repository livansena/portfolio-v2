class ContactsController < ApplicationController

  def create

    ContactMailer.with(
      name: params[:name],
      email: params[:email],
      subject: params[:subject],
      message: params[:message]
    ).portfolio_message.deliver_now

    redirect_to root_path(anchor: "contact"),
                notice: "Message sent successfully!"

  end

end