#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Dage::Application.load_tasks

namespace :db do
  desc "refresh dbs "
  task :refresh  do
    p "This is not support anymore"
    Rake::Task["db:drop:all"].invoke
    Rake::Task["db:create:all"].invoke
    Rake::Task["db:migrate"].invoke
    Rake::Task["db:seed"].invoke
  end
end
