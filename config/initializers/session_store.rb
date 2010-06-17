# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_auth_cucu_session',
  :secret      => 'a4a835450ce63328ccd5cf00c0ba8cb527d0eb76e1483d5e0aa6ab18d46bde3994ef82e8a5c885378f9b7a569e91ceb68b7165f1e42b09ac47c05e2d5675fe78'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
