class Pet
  include Mongoid::Document

  field :name,          type: String
  field :description,   type: String
  field :state,         type: String
  field :species,       type: String
  field :breed,         type: String
  field :year_of_birth, type: Integer

  has_many :uploads, as: :uploadable

  def images
    uploads.map &:image
  end

  def image
    images.first
  end
end
