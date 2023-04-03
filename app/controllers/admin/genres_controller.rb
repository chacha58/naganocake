class Admin::GenresController < ApplicationController
  def index
    # @genre = Genre.new
    # @genres = Genre.all
  end

  def create
    @genre = Genre.new(genre_params)

      if @genre.save
        redirect_to genre_path(@genre.id)
      else
        @genres = Genre.all
        flash[:notice] = "errors prohibited this book from being saved:"
        render :index
      end
  end

  def edit
  end

  def update
  end
end
