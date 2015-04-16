class News
  include Mongoid::Document

  field :text, type: String
  field :created_at, type: DateTime

  def self.recent(num = nil)
    order(created_at: 'desc').limit(num)
  end
end
