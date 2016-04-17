class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def edit
    @list = List.new
    render 'new'
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list
    else
      render 'new'
    end
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      flash.now[:notice] = "Your List was updated!"
      redirect_to @list
    else
      render 'new'
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
