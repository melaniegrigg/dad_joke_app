class Api::DadJokesController < ApplicationController

  def index
    response = HTTP.get("https://official-joke-api.appspot.com/jokes/random")
    @dad_jokes = response.parse

    render 'index.json.jb'
  end
end
