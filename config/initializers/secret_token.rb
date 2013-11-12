# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Reddit::Application.config.secret_key_base = '25a0a819d60d4aaf336f6713ff01545d843c8f4c690d1fdb6e510be5ea2376f948e70406b4f99669d3de18aabc7ba939562e397f70a2d2404bb1dce6d6c1225e'
