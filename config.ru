require_relative './config/environment'

# Parse JSON from the request body into the params hash
use Rack::JSONBodyParser

use CategoryController
use JobsController
run ApplicationController
