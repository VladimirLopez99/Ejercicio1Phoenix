defmodule PetClinic3Web.Router do
  use PetClinic3Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {PetClinic3Web.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PetClinic3Web do
    pipe_through :browser

    get "/", PageController, :index
    get "/bar", PageController, :bar

    resources "/pets", PetController
    resources "/vets", VetController
  end

  # Other scopes may use custom stacks.
  # scope "/api", PetClinic3Web do
  #   pipe_through :api
  # end
end
