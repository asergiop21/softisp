class Equipment < ActiveRecord::Base
  attr_accessible :cat_id, :category, :eq_mac, :eq_node, :eq_observation, :eq_state, :model_id, :supplier_id

  has_many :suppliers
  has_many :models

  after_create :history_eq
  after_update :history_equp
  
  def history_eq
    HistoryEquipment.create(:he_state => self.eq_state, :he_observation =>'Alta de Equipo', :equipment_id=>self.id )
  end

  def history_equp
    HistoryEquipment.create(:he_state => self.eq_state, :he_observation =>'Se Modifico datos de  Equipo', :equipment_id=>self.id )
  end


end
