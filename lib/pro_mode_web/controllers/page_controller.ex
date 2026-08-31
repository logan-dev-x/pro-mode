defmodule ProModeWeb.PageController do
  use ProModeWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
