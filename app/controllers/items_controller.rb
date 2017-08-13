class ItemController < ApplicationController

  def show
    render :show
  end

  def new
    render :new
  end

  def edit
    render :edit
  end

  def create

  end
  
  def update
  end


  def permit_params
    params.require(:item).permit()
  end

end
