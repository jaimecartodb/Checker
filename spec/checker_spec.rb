describe "The Password class" do
	before :each do
		test1 = PasswordChecker.new.check_password("pedro@adldalaa.com", "passwodafArd")
		test2 = PasswordChecker.new.check_password("pedro@adldalaa.com", "121281a")
		test3 = PasswordChecker.new.check_password("pedro@adldalaa.com", "2181/.")		
	end

	it "checks if it's longer than 7" do
	expect test1.to eq(true)
	end

	it "contains a letter" do
		expect test1.to eq(true)
	end	

	it "contains a number" do
		expect test2.to eq(true)
	end
	
	it "contains a symbol" do
		expect test3.to eq(true)
	end

	it "contains a uppercase letter" do
		expect test1.to eq(true)
	end

	it "contains a lowercase letter" do
		expect test2.to eq(true)
	end

	it "doesn't contain the name or domain of the email" do
		expect test2.check_email to eq(true)
	end
