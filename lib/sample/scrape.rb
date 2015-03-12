# This script extracts data from the html pages of the old site zoo.ratusha.lviv.ua to yaml files.
# Pages had been saved to cats.html and dogs.html files.
require 'nokogiri'
require 'active_support/core_ext/array/grouping'
require 'yaml'

class PetScraper

  def parse(file_name)
    doc = Nokogiri::HTML(File.open(File.join __dir__, file_name))
    items = doc.xpath('html/body/div[1]/table[2]/tbody/tr/td[2]/div[4]/div').map &:text

    pets = items.to_a.in_groups_of 4
    pets.map{|pet| to_hash pet }
  end

  private

  def to_hash(pet_array)
    {
        name: pet_array[0],
        description: pet_array[1],
        submitted_at: parse_post_date(pet_array[2]),
        published_at: parse_publishing_date(pet_array[2])
    }
  end

  def parse_post_date(string)
    Date.strptime /На прилаштування (\d\d\.\d\d\.\d\d)/.match(string)[1], '%d.%m.%y'
  end

  def parse_publishing_date(string)
    Date.strptime /Опубліковано: (\d\d\.\d\d\.\d\d)/.match(string)[1], '%d.%m.%y'
  end
end

scraper = PetScraper.new

dogs = scraper.parse 'dogs.html'
dogs.map!{|dog|dog[:species] = :dogs ; dog}
File.write 'dogs.yaml', dogs.to_yaml
puts 'Dogs extracted to dogs.yaml'

cats = scraper.parse 'cats.html'
cats.map!{|cat|cat[:species] = :cats; cat}
File.write 'cats.yaml', cats.to_yaml
puts 'Cats extracted to dogs.yaml'
