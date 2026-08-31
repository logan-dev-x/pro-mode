defmodule ProMode.Habits.HabitCompletion do
  use Ecto.Schema

  schema "habit_completions" do
    field :points_earned, :integer
    field :completed_on, :date
    field :completed_at, :utc_datetime
    belongs_to :user, ProMode.Accounts.User
    belongs_to :habit, ProMode.Habits.Habit
  end
end
