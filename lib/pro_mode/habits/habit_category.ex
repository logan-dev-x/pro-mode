defmodule ProMode.Habits.HabitCategory do
  use Ecto.Schema

  schema "habit_categories" do
    field :name, :string
  end
end
