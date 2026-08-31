defmodule ProMode.Accounts do
  alias ProMode.Accounts.Role
  alias ProMode.Accounts.User
  alias ProMode.Repo

  def get_user_by_telegram_id(telegram_id) do
    Repo.get_by(User, telegram_id: telegram_id)
  end

  def create_user(attrs) do
    role = Repo.get_by(Role, name: "USER")

    User.changeset(%User{}, Map.put(attrs, :role_id, role.id))
    |> Repo.insert()
  end
end
