require './lib/cookie'

RSpec.describe Cookie do
    it 'can initialize' do
        cookie=Cookie.new("Chocolate Chip")
        expect(cookie).to be_an_instance_of(Cookie)
        expect(cookie.type).to eq("Chocolate Chip")
    end
end