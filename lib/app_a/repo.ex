defmodule AppA.Repo do
  use Ecto.Repo,
    otp_app: :app_a,
    adapter: Ecto.Adapters.Postgres
end
