class Admin::GenresController < ApplicationController
  def index
    @genre = Genre.all
  end

  def edit
    @genre = Genre.find(params[:id])
  end
end
