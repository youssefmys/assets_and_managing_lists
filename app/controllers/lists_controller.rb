class ListsController < ApplicationController

  def index #get /lists
    @lists = List.all
    @list = List.new
    render :index
  end

    def show
      @list = List.find_by(id: params[:id])
      render :show
    end

    def create
      @list = List.new(list_params)
      if @list.valid?
        @list.save
        redirect_to lists_path
      else
        render :show
      end

    end

    private

    def list_params
      params.require(:list).permit(:name)
    end
end
