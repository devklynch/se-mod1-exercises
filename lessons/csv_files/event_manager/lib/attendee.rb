class Attendee
    attr_reader :id,
                :name,
                :zipcode

    def initialize(id,first_name,last_name,zipcode)
        @id = id
        @name = "#{first_name} #{last_name}"
        @zipcode = clean_zip(zipcode)
    end

    def clean_zip(zipcode)
        if zipcode.nil?
            zipcode = "00000"
        elsif zipcode.length < 5
            zipcode =zipcode.rjust(5, "0")
        elsif zipcode.length > 5
            zipcode =zipcode[0..4]
        else
            zipcode
        end
    end


end