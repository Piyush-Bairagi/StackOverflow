Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '135330291998-i2qa021vpcs70ud6940e8oa0nusf038h.apps.googleusercontent.com', 'GYtB3X5peSLNjzD-LzsgyGu4'
end