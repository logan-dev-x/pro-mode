defmodule ProMode.AccountsTest do
  use ProMode.DataCase
  alias ProMode.Accounts
  alias ProMode.Accounts.Role
  alias ProMode.Repo

  setup do
    Repo.insert!(%Role{name: "USER"})
    %{attrs: %{name: "test", lastname: "last", telegram_id: 1_234_567}}
  end

  test "create a user", %{attrs: attrs} do
    assert {:ok, _user} = Accounts.create_user(attrs)
  end
end
