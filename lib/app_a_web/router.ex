defmodule AppAWeb.Router do
  use AppAWeb, :router

  pipeline :api do
    plug(CORSPlug)
    plug :accepts, ["json"]
  end

  scope "/graphiql" do
    pipe_through :api
    forward "/", Absinthe.Plug.GraphiQL, schema: AppA.Schema
  end

  scope "/api" do
    pipe_through :api

    forward "/", Absinthe.Plug, schema: AppA.Schema
  end
end
