defmodule ProMode.Repo.Migrations.CreateHabitCategories do
  use Ecto.Migration

  def change do
    create table(:habit_categories) do
      add :name, :string, null: false
    end

    create unique_index(:habit_categories, [:name])
  end
end
