namespace :db do
  namespace :migrate do
    desc "Prepare test database"
    task :test do
      system "rake db:drop RAILS_ENV=test"
      system "rake db:create RAILS_ENV=test"
      system "rake db:migrate RAILS_ENV=test"
    end
  end
end
