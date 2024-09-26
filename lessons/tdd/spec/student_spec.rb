require './lib/student'

RSpec.describe Student do
    describe "instantiation" do
        it 'exists' do
            student = Student.new("Jesse", 1)
            expect(student).to be_instance_of(Student)
        end

        it "can say mod" do
            student = Student.new("Jesse", 1)
            expect(student.say_mod).to eq("I'm in Mod 1")
        end


        it 'has a name, mod, and skills' do
            student = Student.new("Jesse", 1)
            expect(student.name).to eq("Jesse")
            expect(student.mod).to eq(1)
            expect(student.skills).to eq([])
        end

        it 'can learn new skills' do
            student = Student.new("Sophocles", 1)
            student.learn("testing")
            expect(student.skills).to eq(["testing"])

            student.learn("mocks")
            expect(student.skills).to eq(["testing","mocks"])
        end

        it 'can be promoted' do
            student = Student.new("Sophocles", 1)
            student.promote
            expect(student.say_mod).to eq("I'm in Mod 2")
        end


    end
        

end
