require './lib/cookie'
require './lib/jar'
require './lib/person'

RSpec.describe Person do
    it 'can initialize' do
        person=Person.new
        expect(person).to be_an_instance_of(Person)
    end

    it 'can add_cookies' do
        @person=Person.new
        @cookie=Cookie.new("Chocolate Chip")
        @jar=Jar.new(10)
        #require "pry" ; binding.pry
        @person.add_jar(@jar)
        #require "pry" ; binding.pry
        @person.add_cookie(@cookie)

        expect(@jar.current_num_cookies).to eq(1)
    end
end
