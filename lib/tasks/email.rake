require 'mailgun'

namespace :email do
  desc "Email Hello"
  task :hello => :environment do
    #ElasticMailer.hello_email('christopher.kleckner@gmail.com').deliver_now
    #KitnetMailer.hello_email('christopher.kleckner@gmail.com').deliver_now
    #GmailMailer.hello_email('christopher.kleckner@gmail.com').deliver_now
    #MailGunMailer.hello_email('christopher.kleckner@gmail.com').deliver_now
    #MailGunMailer.send_simple_message
    msg = {
      #to: 'kit@kitatdotnet.net',
      to: 'cgkleckner@yahoo.com',
      subject: 'It may work',
      text: 'Here we go'
    }
    TryMailService.new(msg).call
  end
end
