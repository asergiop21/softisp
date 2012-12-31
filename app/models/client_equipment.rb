class ClientEquipment < ActiveRecord::Base
  attr_accessible :ce_linked, :ce_observation, :ce_resp_equip, :ce_respswitch, :ce_resptrafo, :ce_state, :equipment_id

  #Relacion
  belongs_to :cliente

end
