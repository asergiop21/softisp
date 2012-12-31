class Make < ActiveRecord::Base
  attr_accessible :mc_name, :mc_observation

  #relation
  has_many :model, :dependent => :destroy


end
