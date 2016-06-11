defmodule UploadImage.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :avatar, :string
      add :username, :string
      add :password, :string

      timestamps
    end

  end
end
