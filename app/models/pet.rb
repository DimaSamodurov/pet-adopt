class Pet
  include Mongoid::Document

  field :name,          type: String
  field :description,   type: String
  field :state,         type: String

  attachment :picture
end
