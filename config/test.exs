use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :pack_level_config, PackLevelConfig.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :pack_level_config, PackLevelConfig.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "test_pwd",
  database: "pack_level_config_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
