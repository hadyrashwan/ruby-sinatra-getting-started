 
require 'rubygems'
require 'sinatra'
load 'datamapper_setup.rb'


class Todo
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :done , Boolean

end


# class TodoExample < Sinatra::Application
    get '/' do
        'Use the /todo route for the todos CRUD opreations'
    end
    
    get '/todo' do
      'All todos'
    end
    
    post '/todo' do
        'Item added'
    end
    
    put '/todo/:id' do
        "Item with id:  #{params['id']} is updated"
    end
    
    delete '/todo/:id' do
        "Item with id: #{params['id']} is deleted"
    end

# end

