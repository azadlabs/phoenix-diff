use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :sample_app, SampleAppWeb.Endpoint,
  secret_key_base: "XZfd5qB9igop/8hVImSZx60tkGun9SrBpgGvNVPYvj6xjf2tCztFcUZ4S7qvKs6X"

# Configure your database
config :sample_app, SampleApp.Repo,
  username: "postgres",
  password: "postgres",
  database: "sample_app_prod",
  pool_size: 15
