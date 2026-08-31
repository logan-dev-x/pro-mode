defmodule ProMode.Habits.HabitCategory do
  use Ecto.Schema

  schema "habit_categories" do
    field :name, :string
    has_many :habits, ProMode.Habits.Habit, foreign_key: :category_id
  end
end
