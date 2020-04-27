require 'pry'
class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    self.characters.each do |actor|
      "#{self.name}"
      #binding.pry
    end
  end

end
