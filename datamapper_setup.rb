require 'data_mapper'
# require 'pry'

env = ENV['RACK_ENV'] || "development"
DataMapper.setup(:default, ENV['DATABASE_URL'] ||  "sqlite3::memory:")
DataMapper::Logger.new($stdout, :debug)
DataMapper.auto_upgrade!
DataMapper.finalize
