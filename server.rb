 
require 'rubygems'
require 'sinatra'
load 'datamapper_setup.rb'


class Todo
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :text, String
  property :done , Boolean

end

DataMapper.auto_upgrade!


# class TodoExample < Sinatra::Application
    get '/' do
        'Use the /todo route for the todos CRUD opreations'
    end
    
    get '/todo' do
        Todo.all.to_json
    end
    
    post '/todo' do
        body = JSON.parse( request.body.read.to_s )

        todo = Todo.new(body)
        if todo.save
            redirect '/todo'
        else
            status 500
            body {msg:"Can not add the item"}.to_json
        end
    end
    
    get '/todo/:id' do
        Todo.get(params['id']).to_json
    end

    put '/todo/:id' do
        todo = Todo.get(params['id'])
        body = JSON.parse( request.body.read.to_s )
        sucess =  todo.update(body)
        if sucess
            redirect "/todo/#{params['id']}"
        else
            status 500
            body {msg:"Can not update the item"}.to_json
        end

    end
    
    delete '/todo/:id' do
        todo = Todo.get(params['id'])
        todo.destroy!
        "Item with id: #{params['id']} is deleted"
    end

# end

