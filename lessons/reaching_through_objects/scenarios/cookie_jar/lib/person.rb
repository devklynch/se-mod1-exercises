class Person
    attr_reader :person_jar

    def initialize
        @person_jar = nil
    end

    def add_jar(jar)
        @person_jar = jar
    end

    def add_cookie(cookie)
        @person_jar.cookies << cookie
    end
end