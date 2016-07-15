class ApplicationMailer < ActionMailer::Base
  default from: "kit@kitatdotnet.net"
  layout 'mailer'

  def from
    "kit@kitatdotnet.net"
  end
  
  def simple_text(params)
    @email = params[:to]
    @subject = params[:subject] || 'Howdy'
    @text = params[:body] || params[:text]
    @mailer = self.class.to_s
    mail(to: @email,
         subject: @subject,
         delivery_method_options: self.delivery_options)
  end

end
