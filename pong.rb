require_relative 'httpong'
require 'sinatra'

get '/' do
  halt *HTTPong.next
end
