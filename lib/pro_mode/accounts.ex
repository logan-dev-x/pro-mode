defmodule ProMode.Accounts do
  alias ProMode.Accounts.User
  alias ProMode.Repo

  def get_user_by_telegram_id(telegram_id) do
    Repo.get_by(User, telegram_id: telegram_id)
  end
end
