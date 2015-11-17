class TestWorld
  def initialize
    @people = {}
  end

  def clean
    @people.clear
  end

  def add_person(person_alias, person)
    @people[person_alias] = person
  end

  def get_person(person_alias)
    @people[person_alias]
  end
end
