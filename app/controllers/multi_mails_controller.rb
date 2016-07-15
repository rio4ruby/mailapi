class MultiMailsController < ApplicationController
  #before_action :check_params, only: [:try_send]
  
  # POST /multi_mails
  # POST /multi_mails.json
  def try_send
    response = TryMailService.new(multi_mail_params).call
    render json: response
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def multi_mail_params
      params.permit(:to, :from, :subject, :body, :text)
    end

end
