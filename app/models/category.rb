class Category

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def title
    I18n.translate(name, scope: 'categories')
  end

  def count
    Pet.where(species: name).count
  end

  def to_partial_path
    'home/category'
  end

  def self.list
    %i{dogs cats news}
  end

  def self.all
    list.map do |type|
      Category.new(type)
    end
  end
end
