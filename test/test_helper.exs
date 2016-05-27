ExUnit.start

Mix.Task.run "ecto.create", ~w(-r PhoenixChannelExample.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r PhoenixChannelExample.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(PhoenixChannelExample.Repo)

