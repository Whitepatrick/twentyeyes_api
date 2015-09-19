task :default => [:create_db]

task :create_db do
  exec 'psql < config/sql/create_twentyeyesdb.sql'
end

task :insert_posts do
  exec 'psql < config/sql/insert_posts.sql'
end
