#the describe block provides context for which class you're testing
describe Array do
	#the it block is where the test lives
	#They're used to describe which class or instance method
	#you are testing and sometimes a bit about what the method should or should not do
	it "should return a blank instance" do
		expect(Array.new).to eq([])
	end

	it "should allow you to #count the items in it" do
		expect(Array.new.count).to eq (0)
	end
end

#setting state
#you may need to set up some data before tests are used
#this is where the before and after directives are used
#dont' add print statements after each test, this adds to runtime
#only need to know if it failed or passed
# :each is the default, runs before each test
# :all means only do this once before the test is run
# describe Array do
# 	#the before action, create a new array  
# 	before(:all) do
# 		@array = Array.new   
# 	end
# 	#run the test
# 	it "#new should return a blank instance" do     
# 		expect(@array).to eq([])   
# 	end
# 	#run another test
# 	it "should allow you to #count the items in it" do     
# 		expect(@array.count).to eq(0)   
# 	end
# 	#message to display once the tests are done
# 	after(:all) do     
# 		puts "\nTest complete."   
# 	end 
# end

#can run tests with --order rand
#this will randomize the order of the tests


describe Array do
	before(:all) do
		@array = [1, 2, 3]
		@arrayOther = [4, 5, 6]
		@arrayClear = [4, 5, 3, 4, 5, 2, 1, 3, 5, 6]
	end

	it "should join two arrays together" do
		expect(@array|@arrayOther).to eq([1, 2, 3, 4, 5, 6])
	end

	it "#clear the elements in an array" do
		expect(@arrayClear.clear).to eq([])
	end
	after(:all) do
		puts "\nTest Complete\n"
	end
end






