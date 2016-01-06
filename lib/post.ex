defmodule Post do
  use Ecto.Model

  schema "posts" do
    belongs_to :user, :integer, define_field: false # :defaults not working so define own field with default value

    field :user_id, :integer, default: 1
  end
end
