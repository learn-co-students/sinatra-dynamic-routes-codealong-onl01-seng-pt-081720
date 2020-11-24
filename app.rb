require_relative 'config/environment'

# app.rb
#   GET /goodbye/:name
#     sends a 200 status code (FAILED - 1)
#     displays 'goodbye' and a name (FAILED - 2)
#     is not hard-coded (FAILED - 3)
#   GET /multiply/:num1/:num2
#     sends a 200 status code (FAILED - 4)
#     displays the product of the two numbers in the route (FAILED - 5)
#     is not hard-coded (FAILED - 6)

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

  get "/goodbye/:name" do 
    @user_name_2 = params[:name]
    "Goodbye, #{@user_name_2}."
  end

  get "/multiply/:num1/:num2" do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    "#{@num1*@num2}"
  end

end

