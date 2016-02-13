class Chitter < Sinatra::Base
  register Sinatra::Flash
  register Sinatra::Partial
  enable :sessions
  set :session_secret, 'super secret'
  set :partial_template_engine, :erb


  helpers do
    def session_user
      @session_user ||= User.get(session[:user_id])
    end
  end


  get '/' do
    @new_user = User.new
    erb :'user/index'
  end

run!
end
