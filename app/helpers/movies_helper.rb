module MoviesHelper
    def price(movie)
        if movie.free?
            "Free"
            else
               number_to_currency(movie.price) 
           
    end
  end

  def date_and_time(movie)
    movie.starts_at.strftime("%B %d at %I:%M %P")
  end

end
