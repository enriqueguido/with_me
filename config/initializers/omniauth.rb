OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "723438474482197", "16b0218184f445fc1a19249a3917af08"
end
