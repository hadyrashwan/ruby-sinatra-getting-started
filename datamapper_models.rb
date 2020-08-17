load 'datamapper_setup.rb'

# Models
class Todo
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :text, String
  property :done , Boolean

end

DataMapper.auto_upgrade! # Adding schema if needed
