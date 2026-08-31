defmodule ProMode.Levels.Level do
  use Ecto.Schema

  schema "levels" do
    field :title, :string
    field :required_points, :integer
  end
end
