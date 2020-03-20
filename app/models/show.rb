class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

    def actors_list
        # binding.pry
        @cast = []
        @cast = self.actors.map do |actor|
            full_name = actor.first_name + " " + actor.last_name
            @cast<<full_name.to_s
        end 
        @cast.flatten
    end 

end