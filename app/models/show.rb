require 'pry'
class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    self.actors.each do |actor|
      "(#{actor.full_name}).flatten"
      #binding.pry
    end
  end

end
