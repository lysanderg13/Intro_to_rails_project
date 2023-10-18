class FruitsController < ApplicationController
  def index
    @fruits = Fruit.all.order("id ASC")
  end

  def show
    @fruit = Fruit.find(params[:id])
  end
end
