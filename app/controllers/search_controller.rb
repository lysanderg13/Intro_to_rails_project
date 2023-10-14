class SearchController < ApplicationController
  def search
    @query = params[:query]
    @characters = Character.where('name LIKE ?', "%#{@query}%")
    @crews = Crew.where('name LIKE ?', "%#{@query}%")
    @fruits = Fruit.where('name LIKE ?', "%#{@query}%")
  end
end
