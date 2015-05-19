class FacebookPost
  include Mongoid::Document

  field :url,                  type: String
  field :fb_id,                type: String
  field :fb_updated_time,      type: DateTime

  def self.reload
    @users_posts = []
    User.each do |user|
      if user.fb_token
        fb_user = FbGraph2::User.new(user.uid).authenticate(user.fb_token)
        posts = fb_user.posts.first(10)
        posts.each do |post|
          where(fb_id: post.id).first_or_create do |newpost|
            newpost.url = post.actions[1].link
            newpost.fb_id = post.id
            newpost.fb_updated_time = post.updated_time
          end
        end
      end
    end
  end
end