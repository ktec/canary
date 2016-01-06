defimpl Canada.Can, for: User do

  def can?(%User{id: user_id}, action, %Post{user_id: user_id})
  when action in [:index, :show, :new, :create], do: true

  def can?(%User{}, :index, Post), do: true

  def can?(%User{}, action, Post)
    when action in [:new, :create], do: true

  def can?(%User{id: user_id}, action, %Post{user: %User{id: user_id}})
    when action in [:edit, :update], do: true

  def can?(%User{}, _, _), do: false
end

defimpl Canada.Can, for: Atom do
  def can?(nil, _, _), do: false
end
