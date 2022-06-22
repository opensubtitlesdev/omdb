module Omdb
  class Movie
    attr_reader :loaded, :title, :year, :rated, :released, :runtime, :genre,
      :director, :writer, :actors, :plot, :poster, :imdb_rating, :imdb_votes,
      :imdb_id, :type, :metascore, :language, :country, :awards, :imdb_rating,
      :imdb_votes, :tomato_meter, :tomato_rating, :tomato_reviews, :tomato_fresh,
      :tomato_rotten, :tomato_consensus, :tomato_user_meter, :tomato_user_rating,
      :tomato_user_reviews, :dvd, :box_office, :production, :website, :ratings,
      :season, :episode, :parent_imdbid

    def initialize(movie)
      @title = movie["Title"]
      @year = movie["Year"].to_i
      @imdb_id = movie["imdbID"]
      @type = movie["Type"]
      @rated = movie["Rated"]
      @released = movie["Released"]
      @runtime = movie["Runtime"]
      @genre = movie["Genre"]
      @director = movie["Director"]
      @writer = movie["Writer"]
      @actors = movie["Actors"]
      @plot = movie["Plot"]
      @poster = movie["Poster"]
      @metascore = movie["Metascore"]
      @language = movie["Language"]
      @country = movie["Country"]
      @awards = movie["Awards"]
      @ratings = movie["Ratings"]
      @imdb_rating = movie["imdbRating"]
      @imdb_votes = movie["imdbVotes"]
      @tomato_meter = movie["tomatoMeter"]
      @tomato_rating = movie["tomatoRating"]
      @tomato_reviews = movie["tomatoReviews"]
      @tomato_fresh = movie["tomatoFresh"]
      @tomato_rotten = movie["tomatoRotten"]
      @tomato_consensus = movie["tomatoConsensus"]
      @tomato_user_meter = movie["tomatoUserMeter"]
      @tomato_user_rating = movie["tomatoUserRating"]
      @tomato_user_reviews = movie["tomatoUserReviews"]
      @dvd = movie["DVD"]
      @box_office = movie["BoxOffice"]
      @production = movie["Production"]
      @website = movie["Website"]
      @season = movie["Season"] if movie.has_key?("Season")
      @episode = movie["Episode"] if movie.has_key?("Episode")
      @parent_imdbid = movie["seriesID"] if movie.has_key?("seriesID")
    end
  end
end
