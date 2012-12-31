class Model < ActiveRecord::Base

  def self.search()

      self.connection.execute(sanitize_sql([
        "SELECT * FROM makes JOIN models ON makes.id = models.make_id order by makes.id" 
      ]))
  end

  attr_accessible :md_name, :make_id

  
  
  #relation
  belongs_to :make
  belongs_to :equipment

end
