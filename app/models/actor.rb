class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters 
  
   def full_name
    "#{self.first_name} #{self.last_name}"
  end
  
  def list_shows
    characters.map do |name|
      "character.name "
    end 
  end
  
  #{character_name} - #{show_name}
  
end