RSpec.describe MultiMailsController do
  describe "POST try_send" do
    let(:try_send_params) {
      {
        to: 'cgkleckner@yahoo.com',
        #to: 'christopher.kleckner@gmail.com',
        #to: 'kit@kitatdotnet.net',
        from: 'kit@kitatdotnet.net',
        subject: 'Mail Subject Works',
        text: 'Mail Text Works'
      }
    }
    it "sends request" do
      post :try_send, try_send_params
      p response.body
      
      expect(response).to_not be_nil
    end
  end
end
