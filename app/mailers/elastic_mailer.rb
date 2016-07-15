class ElasticMailer < ApplicationMailer

  def delivery_options
    {
      address:              'smtp.elasticemail.com',
      port:                 2525,
      domain:               'kitatdotnet.net',
      user_name:            'cgkleckner@yahoo.com',
      password:             '76174635-0487-4926-bf3a-bbb7acf2a017',
      authentication:       'plain',
      enable_starttls_auto: true,
      openssl_verify_mode:  OpenSSL::SSL::VERIFY_NONE
    }
  end

  
  def hello_email(email)
    @email = email
    @host = 'kitatdotnet.net'
    mail(to: @email,
         subject: "Hello There",
         delivery_method_options: delivery_options)
  end



end
