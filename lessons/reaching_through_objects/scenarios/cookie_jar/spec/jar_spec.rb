require './lib/cookie'
require './lib/jar'

RSpec.describe Jar do
    it 'can initialize' do
        jar=Jar.new(10)
        expect(jar).to be_an_instance_of(Jar)
        expect(jar.maximum_capacity).to eq(10)
        expect(jar.current_num_cookies).to eq(0)
    end
end