defmodule UploadImage.User do
  use UploadImage.Web, :model
  use Arc.Ecto.Model

  schema "users" do
    field :avatar, UploadImage.Avatar.Type
    field :username, :string
    field :password, :string

    timestamps
  end

  @optional_fields ~w()
  @required_fields ~w(username password)

  @required_file_fields ~w()
  @optional_file_fields ~w(avatar)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> cast_attachments(params, @required_file_fields, @optional_file_fields)
  end
end
