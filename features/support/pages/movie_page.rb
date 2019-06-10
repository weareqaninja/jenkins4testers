class MoviePage < BasePage
  def initialize
    @movie_list = "table tbody tr"
  end

  def search(title)
    find("input[placeholder^=Pesquisar]").set title
    find("#search-movie").click
  end

  def alert
    find(".alert").text
  end

  def list
    all(@movie_list)
  end

  def has_movie(title)
    page.has_css?(@movie_list, text: title)
  end
end
