# -*- encoding : utf-8 -*-
require "rvm/capistrano"
require "bundler/capistrano"

set :application, "dage"
set :repository,  "git@github.com:cmingxu/dage.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :app, "112.124.57.67"                          # This may be the same as your `Web` server
role :web, "112.124.57.67"                          # Your HTTP server, Apache/etc
role :db,  "112.124.57.67", :primary => true # This is where Rails migrations will run
role :db,  "112.124.57.67"

set :user, "deploy"
set :password, "P@@ssword"

set :use_sudo, false

set :deploy_to, "/home/deploy/code/#{application}"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
#
default_run_options[:pty] = true
set :rvm_ruby_string,  "ruby-1.9.3-p392"
#set :rvm_type, :user
set :rvm_bin_path, "/home/deploy/.rvm/bin"

#after 'deploy:setup', 'rvm:install_rvm'
#after 'deploy:setup', 'rvm:install_ruby'


namespace :deploy do
  desc "cause Passenger to initiate a restart"
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end


  task :start do
    sudo "/opt/nginx/sbin/nginx"
  end

  task :stop do
    sudo "/opt/nginx/sbin/nginx -s stop"
  end

  task :update_bundle do
    run "cd #{release_path} && bundle install"
  end

end

namespace :db do
  task :db_config, :except => { :no_release => true }, :role => :app do
    run "cp -f #{release_path}/config/database.template #{release_path}/config/database.yml"
  end
end

after "deploy:update_code", "db:db_config", "deploy:update_bundle", "deploy:migrate"


before 'deploy:setup', 'rvm:install_rvm'
before 'deploy:setup', 'rvm:install_ruby'
load "deploy/assets"

