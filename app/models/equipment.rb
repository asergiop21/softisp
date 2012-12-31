class Equipment < ActiveRecord::Base
  attr_accessible :cat_id, :category, :eq_mac, :eq_node, :eq_observation, :eq_state, :model_id, :supplier_id

  has_many :suppliers
  has_many :models

  after_save :history_eq




  def history_eq
  
    bill.create(attr :he_state, attr :he_observation, attr :equipment_id )

  end



end
