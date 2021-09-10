require 'rails_helper'

describe "User Creation" do
  describe 'Happy Paths' do
    it "can create a message" do
      body = {
                 email: 'jake@ihopethiswork.org',
                 user_id: '1',
                 message: 'iasdf a sdfasf asd'
               }

      headers = {"CONTENT_TYPE" => "application/json", 'ACCEPT' => 'application/json' }

      post "/api/v1/reminder", headers: headers, params: body, as: :json

      expect(response).to be_successful
      expect(response.status).to eq(201)

      # message_json = JSON.parse(response.body, symbolize_names: true)
    end
  end
end
