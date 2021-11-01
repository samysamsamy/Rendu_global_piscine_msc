defmodule Todolist.Schemas.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Todolist.Schemas.{Clock, Workingtime}

  schema "users" do
    field :email, :string
    field :username, :string

    has_one :clock, Clock
    has_many :workingtimes, Workingtime

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:username, :email])
    |> validate_required([:username, :email])
    |> validate_format(:email, ~r/^\w{1,}@\w{1,}\.\w{1,}$/)
    |> unique_constraint(:email)
  end
end
