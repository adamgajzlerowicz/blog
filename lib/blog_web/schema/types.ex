defmodule BlogWeb.Schema.Types do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: Blog.Repo

  object :user do
    field :id, :id
    field :email, :string
    field :name, :string
    field :posts, list_of(:post), resolve: assoc(:posts)
  end

  object :post do
    field :content, :string
    field :title, :string
    field :user, :user, resolve: assoc :user
  end
end
