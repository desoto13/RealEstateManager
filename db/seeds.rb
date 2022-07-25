#Account Creation
juan = User.create(email: "jdelacruz@email.com", password: "123456")
p "jdelacruz@email.com account created"
pedro = User.create(email: "ppenduko@email.com", password: "123456")
p "ppenduko@email.com account created"

#Listing properties
house_image_1 = URI.parse("https://static-ph.lamudi.com/url/bm9uZS9ub25l/10000x10000/jpg/cms/Buy_House_Taguig_2.jpg").open
house_image_2 = URI.parse("https://static-ph.lamudi.com/url/bm9uZS9ub25l/10000x10000/jpg/cms/Buy_House_Taguig_2.jpg").open
complex_building_image_1 = URI.parse("https://www.investopedia.com/thmb/JPewW78WWWa7wArfmxEAR1qnvbU=/2222x1350/filters:fill(auto,1)/GettyImages-1002993164-bc84ffb3d31c43b087ab3342c97af0fa.jpg").open
complex_building_image_2 = URI.parse("https://www.investopedia.com/thmb/JPewW78WWWa7wArfmxEAR1qnvbU=/2222x1350/filters:fill(auto,1)/GettyImages-1002993164-bc84ffb3d31c43b087ab3342c97af0fa.jpg").open
commercial_unit_image_1 = URI.parse("https://static-mp.lamudi.com/static/media/bm9uZS9ub25l/2x2x2x380x244/739560d919a74a.jpg").open
commercial_unit_image_2 = URI.parse("https://static-mp.lamudi.com/static/media/bm9uZS9ub25l/2x2x2x380x244/739560d919a74a.jpg").open

juan_house = juan.real_estates.build(type: "House", owner: juan.email, address: "North America", sqmt: 150, price: 150000, rooms: 3, floors: 2, air_cond: true)
juan_house.picture.attach(io: house_image_1, filename: 'house_sample.jpg', content_type: 'image/jpg')
juan_house.save
p "jdelacruz@email.com house created"

pedro_house = pedro.real_estates.build(type: "House", owner: pedro.email, address: "South America", sqmt: 200, price: 200000, rooms: 5, floors: 2, air_cond: true)
pedro_house.picture.attach(io: house_image_2, filename: 'house_sample.jpg', content_type: 'image/jpg')
pedro_house.save
p "ppenduko@email.com house created"

juan_cb = juan.real_estates.build(type: "ComplexBuilding", owner: juan.email, address: "Western Europe", sqmt: 43, price: 80000, units: 5)
juan_cb.picture.attach(io: complex_building_image_1, filename: 'condo_sample.jpg', content_type: 'image/jpg')
juan_cb.save
p "jdelacruz@email.com complex_building created"

pedro_cb = pedro.real_estates.build(type: "ComplexBuilding", owner: pedro.email, address: "Eastern Europe", sqmt: 43, price: 60000, units: 8)
pedro_cb.picture.attach(io: complex_building_image_2, filename: 'condo_sample.jpg', content_type: 'image/jpg')
pedro_cb.save
p "ppenduko@email.com complex_building created"

juan_cu = juan.real_estates.build(type: "CommercialUnit", owner: juan.email, address: "China", sqmt: 1000, price: 1000000, shops: 5, parking: 10)
juan_cu.picture.attach(io: commercial_unit_image_1, filename: 'commercial_sample.jpg', content_type: 'image/jpg')
juan_cu.save
p "jdelacruz@email.com commercial_unit created"

pedro_cu = pedro.real_estates.build(type: "CommercialUnit", owner: pedro.email, address: "South East Asia", sqmt: 1000, price: 2000000, shops: 10, parking: 20)
pedro_cu.picture.attach(io: commercial_unit_image_2, filename: 'commercial_sample.jpg', content_type: 'image/jpg')
pedro_cu.save
p "ppenduko@email.com commercial_unit created"
