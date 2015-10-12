require 'grape'
class HelloAPI < Grape::API
  format :json
  get 'hello' do
    {message: "Hello #{params[:name]} via GET"}
  end

  post 'hello' do
    status 200
    {message: "Hello #{params[:name]} via POST"}
  end
end
