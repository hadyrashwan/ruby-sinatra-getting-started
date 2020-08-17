require 'data_mapper'
# require 'pry'

env = ENV['RACK_ENV'] || "development"
DataMapper.setup(:default, ENV['DATABASE_URL'] ||  "sqlite://#{Dir.pwd}/database.db")
DataMapper::Logger.new($stdout, :debug)
# DataMapper.auto_migrate!
# DataMapper.auto_upgrade!
# DataMapper.finalize
