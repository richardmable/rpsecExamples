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

describe String do
	it "should return "

