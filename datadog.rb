require 'dogapi'
require 'dotenv'

Dotenv.load

app  = ENV["APP"]
env  = ENV["ENV"]
role = ENV["ROLE"]
key  = ENV["DATADOG_API_KEY"]

dog = Dogapi::Client.new(key)
dog.emit_point("#{app}.#{env}.#{role}", 1)
