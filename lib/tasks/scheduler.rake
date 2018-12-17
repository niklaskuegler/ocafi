desc "Pings PING_URL to keep a dyno alive"
task :dyne_pin do
  require "net/http"

  if ENV['PING_URL']
    uri = URI(ENV['PING_URL'])
    Net::HTTP.get_response(uri)
  end
end
