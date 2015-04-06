class Genre
  #require 'json';
  def all
    file = File.read('lib/Books/Books_menu.json');
    genre_hash = JSON.parse(file);
    return genre_hash;
  end
end
