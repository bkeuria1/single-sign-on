OmniAuth.config.logger = Rails.logger
OmniAuth.config.allowed_request_methods = [:post] # recently added because of vulnerability
#************************************************
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_CLIENT_ID'],ENV['GITHUB_CLIENT_SECRET'],
         { :name => "github", :scope => ['read:user','user:email']}
  #provider :facebook, ENV['FACEBOOK_APP_ID'],ENV['FACEBOOK_APP_SECRET']          
  #provider :nnn, 'api_key', 'api_secret'
  #provider :twitter, 
  #provider :facebook, 
  #provider :google_oauth2,     
  #provider :linkedin,  etc.
	
# 	  def create
# 	  auth_hash = request.env['omniauth.auth']
# 	  user = User.create!("name" => auth_hash[:info][:name], "email" => auth_hash[:info][:email])
#     #debug
#   end
end