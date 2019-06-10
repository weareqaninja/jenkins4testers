Dado("que temos {string} do catalogo") do |file_name|
  file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/#{file_name}.yaml"))
  file["movies"].each do |movie|
    Database.new.delete_movie(movie["title"])
    MovieApi.new(get_token).create(movie)
  end
end

Quando("eu faço uma busca pelo termo {string}") do |keyword|
  @movie_page.search(keyword)
end

Então("devo ver os seguintes titulos:") do |table|
  table.hashes.each do |item|
    expect(@movie_page.has_movie(item["keyword"])).to be true
  end

  expect(@movie_page.list.size).to be table.hashes.size
end

Então("devo ver a mensagem {string}") do |expect_alert|
  expect(@movie_page.alert).to eql expect_alert
end
