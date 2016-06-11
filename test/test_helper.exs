ExUnit.start

Mix.Task.run "ecto.create", ~w(-r UploadImage.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r UploadImage.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(UploadImage.Repo)

