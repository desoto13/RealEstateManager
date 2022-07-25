class ComplexBuilding < RealEstate
  validates :units, presence: true
  validates :rooms, :floors, :air_cond, :shops, :parking, absence: true

  def self.model_name
    RealEstate.model_name
  end
end