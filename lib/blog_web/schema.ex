defmodule BlogWeb.Schema do
  use Absinthe.Schema
  import_types BlogWeb.Schema.Types

  query do
#    field :posts, list_of(:post) do
#      resolve fn _params, _info ->
#        {:ok, Blog.Repo.all(Blog.Post)}
#      end
#    end
  end
end
