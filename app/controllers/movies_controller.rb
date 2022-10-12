class MoviesController < ApplicationController
    def index
      @movies = Movie.upcoming
    end
  
    def show
      @movie = Movie.find(params[:id])
    end

  def edit 
    @movie = Movie.find(params[:id])
  end

  def update 
    @movie = Movie.find(params[:id])
 if @movie.update(movie_params)
 flash[:notice] = "movie successfully update!"
    redirect_to @movie
 else
  render :edit
  end
end

  def new
    @movie = Movie.new
  end

 def create
    @movie = Movie.new(movie_params)
  if @movie.save
    redirect_to @movie
 else
    render :new
 end
end

 def destroy
@movie = Movie.find(params[:id])
@movie.destroy
redirect_to movies_url
 end

private

def movie_params
  params.require(:movie).permit(:name, :description, :price, :starts_at, :image_file_name, :capacity)
end
  end

