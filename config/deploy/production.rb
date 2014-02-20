# -*- encoding : utf-8 -*-
role :web, "54.225.109.152"                          # Your HTTP server, Apache/etc
role :app, "54.225.109.152"                          # This may be the same as your `Web` server
role :db,  "54.225.109.152", :primary => true # This is where Rails migrations will run
role :db,  "54.225.109.152"

set :rails_env, "production"
