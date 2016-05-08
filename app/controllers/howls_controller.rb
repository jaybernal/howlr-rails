class HowlsController < ApplicationController
  def new
    @howl = Howl.new
  end

  def create
    @howl = Howl.new(howl_params)
    if @howl.save
      redirect_to :howls, notice: "successful"  #index page
    else
      flash.now[:alert] = "Not Saved"
      render :new
    end
  end

  def index
    @howls = Howl.all
  end

  def destroy
    @howl = Howl.find(params[:id])
    @howl.destroy
    redirect_to :howls, notice: "Successfully deleted!!!"
  end

  private

  def howl_params
    params.require(:howl).permit(:text, :image, :wolf_id)
  end

end
