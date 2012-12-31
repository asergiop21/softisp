module EquipmentHelper
  def nodos(a)
  case a
    when 1 then 'Hogar'
    when 2 then 'Nodo'
    end
  end
  def state(eq_state)
    case eq_state
      when 1 then 'Stock'
      when 2 then 'Baja'
      when 3 then 'Instalado'
      when 4 then 'A Retirar'
      when 5 then 'Asiganado'
      when 6 then 'En Reparacion'
    end
  end

      


end
