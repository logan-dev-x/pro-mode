defmodule ProMode.Accounts.Role do
  use Ecto.Schema

  schema "roles" do
    field :name, :string
  end
end
