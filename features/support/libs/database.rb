require "pg"

class Database
  def initialize
    conn = CONFIG["database"]
    @connection = PG.connect(conn)
  end

  def delete_movie(title)
    @connection.exec("DELETE from public.movies where title = '#{title}';")
  end
end
