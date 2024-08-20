# Add the 2 requires you will need here
require './lib/student'
require 'rspec'


describe Student do #the class should be the exact same name as the class you're testing
  describe '#initialize' do #the name of the method you're testing
    it 'is an instance of student' do #describing what the method should do/return; can be whatever you want
      # write the code to initialize a new student object
      student = Student.new('Penelope')
      expect(student).to be_a Student
    end
  end
  # test it has a name
      it 'is given a name' do
        student = Student.new('Penelope')
        megan=Student.new("Megan")
        expect(student.name).to eq("Penelope")
        expect(megan.name).to eq("Megan")
      end
  # test it has cookies
      it 'has an empty array of cookies' do
        student = Student.new('Penelope')
        expect(student.cookies).to eq([])
      end
     end
   # test it can add cookies
     describe "#add_cookie" do
     it 'can add cookies to the array' do
      student = Student.new('Penelope')
      student.add_cookie("Chocolate Chunk")
      student.add_cookie("Snickerdoodle")
      expect(student.cookies).to eq(["Chocolate Chunk","Snickerdoodle"])
     end
    end
    
  
 
