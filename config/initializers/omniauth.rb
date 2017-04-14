OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "723438474482197", "16b0218184f445fc1a19249a3917af08"
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '108541462688-gcm5kn1vboeb81ia5vin1t0ekd7uoq8l.apps.googleusercontent.com', 'wMfPR_Z2TRyZNwigyNZYM6SN', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
