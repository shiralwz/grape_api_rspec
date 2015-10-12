require 'rails_helper'

RSpec.describe "helloAPI",type: :request do
  describe "GET the /api/hello" do
    it 'should return correct response via GET' do
      get '/api/hello', name: 'Mike'
      expect(response).to be_success
      expect(response).to have_http_status(200)
      body = JSON.parse(response.body)
      body['message'] == 'Hello Mike via GET'
    end
  end

  describe "POST the /api/hello" do
    it 'should return correct response via POST' do
      post '/api/hello', name: 'Mike'
      expect(response).to be_success
      expect(response).to have_http_status(200)
      body = JSON.parse(response.body)
      body['message'] == 'Hello Mike via POST'
    end
  end
end


