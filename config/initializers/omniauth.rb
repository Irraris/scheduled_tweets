Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, Rails.application.credentials.dig(:twitter, :api_key), Rails.application.credentials.dig(:twitter, :api_secret)
  provider :facebook, 
    Rails.application.credentials.dig(:facebook, :app_id),  
    Rails.application.credentials.dig(:facebook, :app_secret), scope: 'email', info_fields: 'email,name'
end