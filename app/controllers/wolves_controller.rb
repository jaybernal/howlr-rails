class WolvesController < ApplicationController
  def new
    @wolf = Wolf.new 
  end

  def create
    @wolf = Wolf.new(wolf_params)
    if wolf.save
      redirect_to :wolves, notice: "Successful" #goes to index
    else
      flash.now[:alert] = "Not Saved"
      render :new
    end
  end

  def index
    @wolves = Wolf.all
  end

  private

  def wolf_params
    params.require(:wolf).permit(:name, :image, :description)
  end

end
