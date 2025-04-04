# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path

# Add font files to the precompile list
# 在 assets.rb 中确保字体文件类型被预编译
Rails.application.config.assets.precompile += %w( fonts/Cute-Bold.otf )



