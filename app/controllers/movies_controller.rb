class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @list = List.find(params[:id])
    @movies = @list.reviews
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to(list_movies_path(params[:list.id]))
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :overview)
  end
end
