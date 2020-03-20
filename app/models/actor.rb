class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name 
        # binding.pry
        self.first_name + " " + self.last_name
    end 

    def list_roles 
        
        show = self.shows.map {|s| s.name}
        character = self.characters.map{|c| c.name}
        
        character_and_shows = character << " - " << show
        character_and_shows.flatten!
        character_and_shows.join()
        
    end 
end