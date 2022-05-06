defmodule AppA.News.Link do
  use Ecto.Schema
  import Ecto.Changeset

  schema "links" do
    field :author_id, :integer
    field :description, :string
    field :url, :string

    timestamps()
  end

  @doc false
  def changeset(link, attrs) do
    link
    |> cast(attrs, [:author_id, :url, :description])
    |> validate_required([:author_id, :url, :description])
  end
end
