class TryMailService
  def initialize(msg)
    @msg = msg
    @mailers = mailers
  end

  def mailers
    [MailGunMailer, ElasticMailer] 
  end

  def try_mailer(mailer)
    mailer.simple_text(@msg).deliver_now
    puts "Successfully sent with #{mailer}"
    true
  rescue RestClient::BadRequest => e
    puts "Could not send with #{mailer}: #{e}"
    false
  end
  
  def call
    @mailers.each do |mailer|
      break if try_mailer(mailer)
    end
  end
end
