class GmailMailer < ApplicationMailer
  self.delivery_method = :smtp

  def delivery_options
    {
      address:              'smtp.gmail.com',
      port:                 465,
      domain:               'kitatdotnet.net',
      user_name:            'christopher.kleckner@gmail.com',
      password:             'Zippy6167',
      authentication:       'plain',
      enable_starttls_auto: true
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
