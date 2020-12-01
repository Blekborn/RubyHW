require_relative 'app/pet'
require 'rack'

use Rack::Reloader, 0
use Rack::Auth::Basic do |username, password|
  username == 'pippo' && password == 'pluto'
end
run Pet