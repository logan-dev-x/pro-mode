defmodule ProMode.Repo.Migrations.CreateHabitCompletions do
  use Ecto.Migration

  def change do
    create table(:habit_completions) do
      add :user_id, references(:users), null: false
      add :habit_id, references(:habits), null: false
      add :points_earned, :integer, null: false
      add :completed_at, :utc_datetime, null: false
      add :completed_on, :date, null: false
    end

    create index(:habit_completions, [:habit_id])
    create unique_index(:habit_completions, [:user_id, :habit_id, :completed_on])
  end
end
