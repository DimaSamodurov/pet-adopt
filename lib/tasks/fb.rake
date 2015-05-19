namespace :fb do
  desc "TODO"
  task load: :environment do
    FacebookPost.reload
  end

end
