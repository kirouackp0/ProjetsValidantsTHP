require_relative 'gossip'
require 'securerandom'

class ApplicationController < Sinatra::Base
  get '/' do
    erb :index, locals: {gossips: Gossip.all}
  end

  get '/gossips/new' do
    erb :new_gossips
  end

  post '/gossips/new/' do
    author = params["gossip_author"]
    content = params["gossip_content"]

    id = SecureRandom.uuid

    gossip = Gossip.new(author, content)

    gossip.save
    redirect '/'
  end

  post '/gossips/' do
    id = params["id"]
    redirect "/gossips/#{id}"  
  end

  get '/gossips/:id' do
    id = params["id"]
    selected_gossip = Gossip.find(id)
    erb :show, locals: {gossip: selected_gossip, index: id}
  end
end

=begin
    

=end