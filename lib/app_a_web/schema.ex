defmodule AppA.Schema do
  use Absinthe.Schema
  use Absinthe.Federation.Schema

  alias AppA.NewsResolver

  query do
    extends()

    field :link, :link do
      arg(:id, non_null(:id))
      resolve(&NewsResolver.get_link_by_id/3)
    end

    field :links, list_of(:link) do
      resolve(&NewsResolver.all_links/3)
    end
  end

  mutation do
    field :create_link, non_null(:link) do
      arg(:author_id, non_null(:id))
      arg(:url, non_null(:string))
      arg(:description, non_null(:string))
      resolve(&NewsResolver.create_link/3)
    end
  end

  object :link do
    key_fields("authorId")
    field :id, non_null(:id)
    field :author_id, non_null(:id)
    field :url, non_null(:string)
    field :description, non_null(:string)
  end
end
