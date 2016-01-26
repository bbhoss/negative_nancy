defmodule NegativeNancy.Router do
  use NegativeNancy.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", NegativeNancy do
    pipe_through :api
  end
end
