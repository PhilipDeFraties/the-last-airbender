class Character
  attr_reader :name,
              :allies,
              :enemies,
              :affiliations,
              :photo

  def initialize(char_data)
    @name = char_data[:name]
    @allies = allies(char_data[:allies])
    @enemies = enemies(char_data[:enemies])
    @affiliations = affiliations(char_data[:affiliations])
    @photo = photo(char_data[:photoUrl])
  end

  def allies(char_allies)
    unless allies == nil
      allies
    else
      "No allies"
    end
  end

  def enemies(char_enemies)
    unless char_enemies == nil
      char_enemies
    else
      "No enemies"
    end
  end

  def affiliations(char_affiliations)
    unless char_affiliations == nil
      char_affiliations
    else
      "No affiliations"
    end
  end

  def affiliations(char_photo)
    unless char_photo == nil
      char_photo
    else
      "No photo"
    end
  end
end
