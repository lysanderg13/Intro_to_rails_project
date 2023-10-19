class FruitsController < ApplicationController
  def index
    @fruits = Fruit.page(params[:page]).per(20)
    @fruit_number_offset = (@fruits.current_page - 1) * @fruits.limit_value
  end

  def show
    @fruit = Fruit.find(params[:id])
  end
end
