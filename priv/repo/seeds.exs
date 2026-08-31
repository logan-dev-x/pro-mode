# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ProMode.Repo.insert!(%ProMode.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias ProMode.Repo
alias ProMode.Accounts.Role

Repo.insert!(%Role{name: "USER"}, on_conflict: :nothing)
Repo.insert!(%Role{name: "ADMIN"}, on_conflict: :nothing)
