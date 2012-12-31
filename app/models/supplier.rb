class Supplier < ActiveRecord::Base
  attr_accessible :pv_address, :pv_cel, :pv_cel1, :pv_locality, :pv_name, :pv_phone, :pv_province

#Relaciones

  belongs_to :equipment



end
