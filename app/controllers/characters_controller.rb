class CharactersController < ApplicationController
  def index
    @characters = Character.page(params[:page]).per(30)
    @character_number_offset = (@characters.current_page - 1) * @characters.limit_value
  end

  def show
    @character = Character.find(params[:id])
  end
end
