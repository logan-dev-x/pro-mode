defmodule ProMode.Repo.Migrations.Users do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string, null: false
      add :lastname, :string
      add :telegram_id, :bigint, null: false
      add :total_score, :integer, default: 0, null: false
      add :role_id, references(:roles), null: false
    end

    create index(:users, [:role_id])
    create unique_index(:users, [:telegram_id])
  end
end
