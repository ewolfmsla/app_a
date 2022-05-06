defmodule AppA.NewsResolver do
  alias AppA.News

  def all_links(_root, _args, _info) do
    {:ok, News.list_links()}
  end

  def get_link_by_id(_root, args, _info) do
    {:ok, News.get_link(args.id)}
  end

  def create_link(_root, args, _info) do
    News.create_link(args)
  end
end
