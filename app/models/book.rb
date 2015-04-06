class Book
  include Mongoid::Document
  field :name, type: String
  field :author, type: String
  field :annotation, type: String
  field :genre, type: String
end
