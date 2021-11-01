defmodule Todolist.Schemas.Workingtime do
  use Ecto.Schema
  import Ecto.Changeset
  alias Todolist.Schemas.{User}

  schema "workingtimes" do
    field :end, :naive_datetime
    field :start, :naive_datetime

    belongs_to :user, User

    timestamps()
  end

  @doc false
  def changeset(workingtime, attrs) do
    workingtime
    |> cast(attrs, [:end, :start, :user_id])
    |> validate_required([:end, :start, :user_id])
    |> foreign_key_constraint(:user_id)
  end
end
