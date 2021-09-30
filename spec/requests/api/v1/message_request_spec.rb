require 'rails_helper'

describe "User Creation" do
  describe 'Happy Paths' do
    it "can create a message" do
      body = {
                 email: 'jake@ihopethiswork.org',
                 user_id: '1',
                 message: 'iasdf a sdfasf asd',
                 time: '11:00',
                 start_date: '2021-09-29',
                 end_date: '2021-09-30'
               }

      headers = {"CONTENT_TYPE" => "application/json", 'ACCEPT' => 'application/json' }

      post "/api/v1/reminder", headers: headers, params: body, as: :json

      expect(response).to be_successful
      expect(response.status).to eq(204)

      # message_json = JSON.parse(response.body, symbolize_names: true)
    end
  end

  describe 'Sad Paths' do
    it "won't create a message if info is missing" do
      body = {
                user_id: '1',
                message: 'iasdf a sdfasf asd',
                time: '11:00',
                start_date: '2021-09-29',
                end_date: '2021-09-30'
               }

      headers = {"CONTENT_TYPE" => "application/json", 'ACCEPT' => 'application/json' }

      post "/api/v1/reminder", headers: headers, params: body, as: :json


      expect(response).to_not be_successful
      expect(response.status).to eq(404)

      bad_request_json = JSON.parse(response.body, symbolize_names: true)


      expect(bad_request_json[:error]).to eq("Email can't be blank")
    end
  end
end
