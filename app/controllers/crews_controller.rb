class CrewsController < ApplicationController
  def index
    @crews = Crew.page(params[:page]).per(20)
    @crew_number_offset = (@crews.current_page - 1) * @crews.limit_value
  end

  def show
    @crew = Crew.find(params[:id])
  end
end
