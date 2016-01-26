ExUnit.start

Mix.Task.run "ecto.create", ~w(-r NegativeNancy.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r NegativeNancy.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(NegativeNancy.Repo)

