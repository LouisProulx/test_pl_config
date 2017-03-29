# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :pack_level_config,
  ecto_repos: [PackLevelConfig.Repo]

# Configures the endpoint
config :pack_level_config, PackLevelConfig.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GBninNtFkqz0O0XTP0ZHT10M2yMjDDkFApFEeet4AtJGIwnmLAbHwD0lxUWYY2AT",
  render_errors: [view: PackLevelConfig.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PackLevelConfig.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
