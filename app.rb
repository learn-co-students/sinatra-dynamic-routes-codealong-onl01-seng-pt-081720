require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye/:name' do
    "Goodbye, #{params[:name]}."
  end

  # Example dynamic route
  get '/multiply/:num_one/:num_two' do
    @first_number = params[:num_one].to_i
    @second_number = params[:num_two].to_i
    @final_number = @first_number * @second_number
    @final_number.to_s
  end

  
end