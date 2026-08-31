defmodule ProMode.Repo.Migrations.CreateLevels do
  use Ecto.Migration

  def change do
    create table(:levels) do
      add :title, :string, null: false
      add :required_points, :integer, null: false
    end

    create unique_index(:levels, [:title])
    create unique_index(:levels, [:required_points])
  end
end
