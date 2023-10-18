class CharactersController < ApplicationController
  def index
    @characters = Character.all.order("id ASC")
  end

  def show
    @character = Character.find(params[:id])
  end
end