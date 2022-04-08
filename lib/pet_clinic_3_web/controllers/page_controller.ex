defmodule PetClinic3Web.PageController do
  use PetClinic3Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
