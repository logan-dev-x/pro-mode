defmodule ProMode.Repo.Migrations.CreateHabits do
  use Ecto.Migration

  def change do
    create table(:habits) do
      add :name, :string, null: false
      add :description, :string
      add :points, :integer, null: false
      add :category_id, references(:habit_categories), null: false
    end

    create unique_index(:habits, [:category_id, :name])
    create constraint(:habits, :positive_points, check: "points > 0")
  end
end
