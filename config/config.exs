# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_ember,
  ecto_repos: [PhxEmber.Repo]

# Configures the endpoint
config :phx_ember, PhxEmberWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XaE7HpIrFkwe0sHMEz6oMt0PfmKoieLME9jvX3hOqcQnnMtZl5CPcRWz3iVJ5WII",
  render_errors: [view: PhxEmberWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhxEmber.PubSub,
  live_view: [signing_salt: "yfhpXxyU"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
