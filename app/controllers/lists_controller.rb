class ListsController < ApplicationController

  def index
  end

  def new
    @list = List.new
  end

  def create
    @list = current_user.create(list_params)
  end

  def show 
  end

  def destroy
  end

  private

  def list_params 
    params.require(:list).permit(:name)
  end

end