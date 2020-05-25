defmodule HomecamMediaWeb.Router do
  use HomecamMediaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", HomecamMediaWeb do
    pipe_through :api
  end
end
