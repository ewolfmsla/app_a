defmodule AppA.Repo.Migrations.CreateLinks do
  use Ecto.Migration

  def change do
    create table(:links) do
      add :author_id, :integer
      add :url, :string
      add :description, :text

      timestamps()
    end
  end
end
