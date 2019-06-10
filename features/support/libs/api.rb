
require "httparty"

class MovieApi
  include HTTParty
  base_uri CONFIG["api"]["movies"]

  def initialize(token)
    @headers = { "Authorization" => "JWT " + token }
  end

  def create(movie)
    self.class.post("/movies", body: movie, headers: @headers)
  end

  def search_by_title(title)
    self.class.get("/movies?title=" + title, headers: { "Authorization" => @token })
  end

  def delete(id)
    self.class.delete("/movies/" + id.to_s, headers: { "Authorization" => @token })
  end

  def delete_by_title(title)
    res = search_movie_by_title(title).parsed_response
    res["data"].each { |movie| delete(movie["id"]) }
  end
end
