class HomeController < ApplicationController
  def index
    @characters = Character
                  .order("id ASC")
                  .limit(10)

    @crews = Crew.order("id ASC").limit(10)

    @fruits = Fruit.order("id ASC").limit(10)
  end
end
