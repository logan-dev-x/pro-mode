defmodule ProMode.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :lastname, :string
    field :telegram_id, :integer
    field :total_score, :integer
    belongs_to :role, ProMode.Accounts.Role
    has_many :habit_completions, ProMode.Habits.HabitCompletion
  end

  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :lastname, :telegram_id])
    |> validate_required([:name, :telegram_id])
    |> unique_constraint(:telegram_id)
  end
end
