class Upload
  include Mongoid::Document

  attachment :image

  belongs_to :uploadable, polymorphic: true
end
