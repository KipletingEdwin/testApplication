class MakesController < ApplicationController

  def index
    make = Make.all
    render json: make, status: :ok
  end

  def show
    make = find_make
    render json: make
  end

  def create
    make  = Make.create(make_params)
    render json: make, status: :created
  end

  def update
    make = find_make
    make.update(make_params)
    render json: make, status: :ok
  end

  def destroy
    make = find_make
    make.destroy
    head :no_content
  end


\

  private
    def find_make
      make = Make.find(params[:id])
    end

    def make_params
      params.require(:make).permit(:year, :plate)
    end
end
