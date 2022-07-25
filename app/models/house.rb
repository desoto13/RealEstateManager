class House < RealEstate
  validates :rooms, :floors, presence: true
  validates :units, :shops, :parking, absence: true

  def self.model_name
    RealEstate.model_name
  end
end