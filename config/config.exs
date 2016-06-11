# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :upload_image, UploadImage.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "t9dFFkQNyCMCizS717zdCUviBkaY2dd/4ej+UPobGj9zb+94fAUkfYVszI1rUlf4",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: UploadImage.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false

config :arc,
  bucket: "citizenlabtesting",
  virtual_host: false

config :ex_aws,
  access_key_id: [{:system, "AWS_ACCESS_KEY_ID"}, :instance_role],
  secret_access_key: [{:system, "AWS_SECRET_ACCESS_KEY"}, :instance_role]
  # region: "ap-southeast-1",
  # s3: [
  #   schema: "http://",
  #   host: "s3-ap-southeast-1.amazonaws.com",
  #   region: "ap-southeast-1"
  # ]
