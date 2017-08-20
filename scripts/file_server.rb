require 'socket'
require 'sinatra' 

PORT = 3000

ip = Socket.ip_address_list.detect{|intf| intf.ipv4_private?}
ip_port = "#{ip.ip_address}:#{PORT}"


puts "################"
puts "Check Server Running at #{ip_port}/healthcheck"
puts "Download App at #{ip_port}/download/app-debug.apk"
puts "################"
puts ""

set :bind, '0.0.0.0'
set :port, PORT

get '/healthcheck' do 
  'Sinatra File Server is running'
end

get '/download/app-debug.apk' do
  send_file "./app/build/outputs/apk/app-debug.apk", :filename => "app-debug.apk", :type => 'Application/octet-stream'
end

