class TryMailService
  def initialize(msg)
    @msg = msg
    @mailers = mailers
  end

  def mailers
    [MailGunMailer, ElasticMailer] 
  end

  def try_mailer(mailer)
    rtn = mailer.simple_text(@msg).try(:deliver_now)
    puts "Successfully sent with #{mailer} RTN=#{rtn.inspect}"
    { response: rtn, mailer: mailer.to_s , result: :sent}
  rescue RestClient::BadRequest => e
    puts "Could not send with #{mailer}: #{e}"
    { response: rtn, mailer: mailer.to_s , result: :failed, error: e.message}
  end
  
  def call
    @mailers.each do |mailer|
      resp = try_mailer(mailer)
      return resp if resp[:result] == :sent
    end
    { result: :failed, error: 'All mailers failed'}
  end
end
