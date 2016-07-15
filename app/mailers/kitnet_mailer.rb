class KitnetMailer < ApplicationMailer
  self.delivery_method = :smtp

  def delivery_options
    {
      address:              'smtp.kitatdotnet.net',
      port:                 562,
      domain:               'kitatdotnet.net',
      user_name:            'kit',
      password:             'Igotit.3',
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
