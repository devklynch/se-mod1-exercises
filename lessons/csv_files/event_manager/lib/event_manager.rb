# ./lib/event_manager.rb
require "csv"
class EventManager
    attr_reader :attendees

    def initialize
        @attendees=[]
    end

    def create_attendees(file_path)
        CSV.foreach(file_path, headers:true, header_converters: :symbol) do |row|
            @attendees << Attendee.new(row[:id], row[:first_Name], row[:last_Name], row[:Zipcode])
        end
        @attendees
    end
end


