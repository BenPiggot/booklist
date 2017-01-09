class TagsController < ApplicationController


  def new
    @tag = Tag.new
  end

  def create

  end

  def update
  end

  def destory
  end

  private

  def tags_params
    params.require(:tag).permit(:name)
  end
end