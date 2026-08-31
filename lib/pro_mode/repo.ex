defmodule ProMode.Repo do
  use Ecto.Repo,
    otp_app: :pro_mode,
    adapter: Ecto.Adapters.Postgres
end
