require 'data_mapper'
require 'dm-postgres-adapter'

require_relative 'models/user'

DataMapper::Logger.new($stdout, :debug)

DataMapper.setup(:default, "postgres://localhost/chitter")
DataMapper.finalize
DataMapper.auto_upgrade!