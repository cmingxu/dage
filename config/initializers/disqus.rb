# -*- encoding : utf-8 -*-
Disqus::defaults[:api_key]         = ""
Disqus::defaults[:account]         = "xuchunming" # your disqus account
Disqus::defaults[:developer]       = Rails.env.development? # allows threads to work on localhost
Disqus::defaults[:container_id]    = 'disqus_thread' # desired thread container
Disqus::defaults[:avatar_size]     = 48 # squared pixel size of avatars
Disqus::defaults[:color]           = "grey" # theme color
Disqus::defaults[:default_tab]     = "popular" # default widget tab
Disqus::defaults[:hide_avatars]    = false # hide or show avatars
Disqus::defaults[:hide_mods]       = true # hide or show moderation
Disqus::defaults[:num_items]       = 15 # number of comments to display
Disqus::defaults[:show_powered_by] = true # show or hide powered by line
Disqus::defaults[:orientation]    
