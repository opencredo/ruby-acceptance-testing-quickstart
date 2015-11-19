class TestWorld
  def initialize
    @users = {}
  end

  def clean
    @users.clear
  end

  def add_user(user_alias, person)
    @users[user_alias] = person
  end

  def get_user(user_alias)
    @users[user_alias]
  end
end
