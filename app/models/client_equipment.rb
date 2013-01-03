class ClientEquipment < ActiveRecord::Base
  attr_accessible :ce_linked, :ce_observation, :ce_resp_equip, :ce_respswitch, :ce_resptrafo, :ce_state, :equipment_id

  #Relacion
  belongs_to :cliente
  
  #Callbacks
  before_update :be_equiposup 
  after_create :history_equipment
  after_destroy :equipment_destroy
  after_update :equipment_update

  def history_equipment
    #cargamos el registro en el historial de equipos
     HistoryEquipment.create(:he_state =>'1', :he_observation =>  ce_observation + cliente_id.to_s , :equipment_id=>equipment_id )
    #actualizamos el estado del equipo - Se actualiza a estado 3 que significa que esta instalado
    @equipment = Equipment.find(equipment_id)
    @equipment.update_attributes(:eq_state => '3')
  end
  def equipment_destroy
   #Al eliminar el equipo se debe colocar en el historial que se elimino 
   @equipment = Equipment.find(equipment_id)
   @equipment.update_attributes(:eq_state => '1')
  end
  #Al actualizar 
  def equipment_update
   @equipment = Equipment.find(equipment_id)
   @equipment.update_attributes(:eq_state => '3')
  end
  
  def be_equiposup
  @client_equipment_ideq = ClientEquipment.where(:cliente_id =>'11')  
  @client_equipment_ideq.each do |f| 
  @ce_id = f.equipment_id
end
  @equipment = Equipment.find(@ce_id)
  @equipment.update_attributes(:eq_state => '1')
  end
end
