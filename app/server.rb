

class Chitter < Sinatra::Base
  use Rack::MethodOverride
  use Rack::Session::Pool, :expire_after => 2592000
  register Sinatra::Flash
  set :session_secret, 'super secret'
  set :environment, :test


  helpers do
    def session_user
      @session_user ||= User.get(session[:user_id])
    end
  end


  get '/' do
    @new_user = User.new
    erb :'user/index'
  end

  # run!
  run! if app_file == $0
end
