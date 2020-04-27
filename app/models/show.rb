class Show < ActiveRecord::Base
  belongs_to :network
  has_many :actors, through: :characters

  def actors_list
    self.actor.collect do |actor|
      "#{actor.first_name} #{actors.last_name}"
    end
  end

end
