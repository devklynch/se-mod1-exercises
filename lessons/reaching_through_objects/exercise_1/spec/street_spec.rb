require './lib/apartment'
require './lib/room'
require './lib/building'
require './lib/street'

RSpec.describe Street do
    it 'exists' do
    adlington = Street.new("Adlington Road")

    expect(adlington).to be_an_instance_of(Street)
    expect(adlington.name).to eq("Adlington Road")
    expect(adlington.buildings).to eq([])
    end

    it 'can add buildings' do
    adlington = Street.new("Adlington Road")
    building = Building.new("623","Savills Apartment Building")

    adlington.add_building(building)
    expect(adlington.buildings.count).to eq(1)
    
    adlington.add_building(zebra=Building.new("123", "Zebra Apartments"))
    expect(adlington.buildings.count).to eq(2)
end
    it 'gives buildings in alpha order' do
        adlington = Street.new("Adlington Road")
    building = Building.new("623","Savills Apartment Building")

    adlington.add_building(building)

    zebra = Building.new("123", "Aebra Apartments")

    adlington.add_building(zebra)

    expect(adlington.buildings).to eq(["Aebra Apartments","Savills Apartment Building"])

    end

    it 'gives #number of available apartments' do
    adlington = Street.new("Adlington Road")
    bldg = Building.new("623","Savills Apartment Building")
    apt_1 = Apartment.new
    apt_2 = Apartment.new
    apt_5 = Apartment.new
  
    bldg.add_apartment(apt_1)
    bldg.add_apartment(apt_2)
    bldg.add_apartment(apt_5)

    adlington.add_building(bldg)
    expect(adlington.number_of_available_apartments).to eq(3)
end

     it 'can list available apartments' do
        adlington = Street.new("Adlington Road")
        building = Building.new("623","Savills Apartment Building")
    
        adlington.add_building(building)
        zebra = Building.new("123", "Aebra Apartments")

    adlington.add_building(zebra)

    
    result={
        "Zebra Apartments" => ["bedroom", "laundry"]
        "Savills Apartment Building" => ["bathroom", "bedroom", "kitchen", "laundry"]
        "Savills Apartment Building" => ["bathroom", "bedroom", "laundry"]
      }
    expect(adlington.list_available_apartment).to eq(result)
    end
end