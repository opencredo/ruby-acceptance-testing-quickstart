class TestWorld

  require 'factory_girl'
  Dir.glob(File.join(File.dirname(__FILE__), '../../spec/factories/*.rb')).each { |f| require f }

  include Singleton

  def initialize
    @cards = Hash.new
  end

  def clean
    @cards.clear
  end

  def new_card (card_alias, card_type)
    case card_type.downcase
    when 'minion' then
      return new_minion_card(card_alias)
    when 'spell' then
      return new_spell_card(card_alias)
    when 'weapon' then
      return new_weapon_card(card_alias)
    else
      raise ArgumentError(card_type)
    end
  end
end
