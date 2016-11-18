# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w(*.svg *.eot *.woff *.ttf *.gif *.png *.ico)
# CSS
Rails.application.config.assets.precompile += ['sessions.css','registrations.css','passwords.css','welcome.css','dashboard.css','user_packages.css']
# JS
Rails.application.config.assets.precompile += ['sessions.js','registrations.js','passwords.js','welcome.js','dashboard.js','user_packages.js']
