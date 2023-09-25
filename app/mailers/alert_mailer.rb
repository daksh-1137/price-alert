class AlertMailer < ApplicationMailer
    default :from => 'dakshbhayana123@gmail.com'
include CryptoPriceAlert
  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_alert_email(email,crypto_currency)
    @current_price = current_price(crypto_currency)
    if !@current_price.nil?
      mail( :to => email, :subject => 'Price Alert Hit' )
    end
  end



end
