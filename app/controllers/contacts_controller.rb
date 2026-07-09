class ContactsController < ApplicationController

  def create

    ContactMailer.with(
      name: params[:name],
      email: params[:email],
      subject: params[:subject],
      message: params[:message]
    ).portfolio_message.deliver_now

    render json: {
      success: true,
      message: "Thank you! Your message has been sent successfully."
    }

  rescue StandardError => e

    Rails.logger.error("[Contact] #{e.class}: #{e.message}")

    render json: {
      success: false,
      message: "Sorry, we couldn't send your message. Please try again."
    }, status: :unprocessable_entity

  end

end