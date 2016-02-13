ENV['RACK_ENV'] ||= 'development'
require 'sinatra/base'
require 'sinatra/flash'

require_relative 'data_mapper_setup'

require_relative 'server'
require_relative 'controllers/new_users'
require_relative 'controllers/sessions'