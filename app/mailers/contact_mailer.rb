class ContactMailer < ApplicationMailer

  default to: "livansena+menssagemportifolio@gmail.com"

  def portfolio_message
    @name    = params[:name]
    @email   = params[:email]
    @subject = params[:subject]
    @message = params[:message]

    mail(
      from: @email,
      subject: "[Portfolio] #{@subject}"
    )
  end

end