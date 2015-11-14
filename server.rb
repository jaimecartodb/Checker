require 'sinatra'
require 'sinatra/reloader'
require 'pry'

require_relative('./lib/password_checker.rb')

enable(:sessions)

get "/" do 
	erb :login
end

post "/login" do
	PasswordChecker.new.check_password(params[:email], params[:password]) ? redirect("/unicorn") : redirect("/")
end

get "/unicorn" do
	erb :unicorn
end

