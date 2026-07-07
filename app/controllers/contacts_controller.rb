class ContactsController < ApplicationController

  def create

    ContactMailer.with(
      name: params[:name],
      email: params[:email],
      subject: params[:subject],
      message: params[:message]
    ).portfolio_message.deliver_now

    respond_to do |format|
      format.turbo_stream
      format.html do
        redirect_to root_path(anchor: "contact"),
                    notice: "Message sent successfully!"
      end
    end

  rescue StandardError

    respond_to do |format|
      format.turbo_stream { render :error, status: :unprocessable_entity }
      format.html do
        redirect_to root_path(anchor: "contact"),
                    alert: "Something went wrong. Please try again."
      end
    end

  end

end