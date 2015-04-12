class Pet
  include Mongoid::Document

  field :name,          type: String
  field :description,   type: String
  field :state,         type: String
  field :species,       type: String
  field :breed,         type: String
  field :date_of_birth, type: Date

  has_many :uploads, as: :uploadable
end
