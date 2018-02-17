OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '455275543617-btic2deqgfo5vghf8ortq1l54sfmq11n.apps.googleusercontent.com', 'N6U4Ib3dZtrf-2E-_Pq85AmN', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
