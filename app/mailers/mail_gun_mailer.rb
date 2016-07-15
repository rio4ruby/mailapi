class MailGunMailer < ApplicationMailer

  def from
    "Mailgun Sandbox <postmaster@sandboxba05f472e82a48b895cee964c6291c87.mailgun.org>"
  end

  def simple_text(params)
    @email = params[:to]
    @subject = params[:subject] || 'Howdy'
    @text = params[:body] || params[:text]
    @mailer = self.class.to_s
    @from = self.from
    
    rtn = RestClient.post "https://api:key-2782202d3a7eeaaa93b1cbaee8ed0a7b"\
                    "@api.mailgun.net/v3/sandboxba05f472e82a48b895cee964c6291c87.mailgun.org/messages",
                    :from => @from,
                    :to => @email,
                    # :to => "Christopher Kleckner <christopher.kleckner@gmail.com>",
                    :subject => @subject,
                    :text => @text
    puts rtn
    rtn
  end

  
end
