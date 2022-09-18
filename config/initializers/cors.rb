
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :patch, :put, :delete]
  end
end

# this is a middleware, CORS (Cross-Origin Resource Sharing) mechanism 
# supports secure cross-origin requests and data transfers between browsers and servers.