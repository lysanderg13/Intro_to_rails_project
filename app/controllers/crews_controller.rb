class CrewsController < ApplicationController
  def index
    @crews = Crew.all.order("id ASC")
  end

  def show
    @crew = Crew.find(params[:id])
  end
end
