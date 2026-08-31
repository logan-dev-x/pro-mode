defmodule ProMode.Accounts.User do
  use Ecto.Schema

  schema "users" do
    field :name, :string
    field :lastname, :string
    field :telegram_id, :integer
    field :total_score, :integer
    belongs_to :role, ProMode.Accounts.Role
  end
end
