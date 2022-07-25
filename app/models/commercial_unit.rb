class CommercialUnit < RealEstate
  validates :shops, :parking, presence: true
  validates :rooms, :floors, :air_cond, :units, absence: true

  def self.model_name
    RealEstate.model_name
  end
  
end