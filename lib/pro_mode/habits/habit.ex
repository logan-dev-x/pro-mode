defmodule ProMode.Habits.Habit do
  use Ecto.Schema

  schema "habits" do
    field :name, :string
    field :description, :string
    field :points, :integer
    belongs_to :category, ProMode.Habits.HabitCategory
  end
end
