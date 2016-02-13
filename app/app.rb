ENV['RACK_ENV'] ||= 'development'
# require 'sinatra'
require 'sinatra/base'
require 'sinatra/flash'
require 'sinatra/partial'


require_relative 'data_mapper_setup'

require_relative 'server'
require_relative 'controllers/new_users'
require_relative 'controllers/sessions'
