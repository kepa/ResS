FEATURE: Proper account authentication
	As a stakeholder
	I want to login into my account 
	So I can access the information relevant to me stored in the system 

//Controller
SCENARIO: Login with correct credentials
	Given that I have an account registered in the system
	AND that I have entered the right credentials
	When I submit the credentials
	Then I get access to repository of information in the system

SCENARIO: Login with wrong credentials
	Given that I have an account registered in the system
	AND that I have entered incorrect credentials
	When I submit the credentials
	Then I'm not granted access to the repository of information in the system

//GUI
SCENARIO: Logging-in through the access page with correct credentials	
	Given that I have an account registered in the system
	When I enter my CNPJ in the CNPJ field
	AND I enter my correct password in the password field
	AND I submit the form via the "Login" button
	Then I get redirected to my dashboard page
	AND I get flashed a notice saying that I've logged in

SCENARIO: Logging-in through the access page with incorrect credentials	
	Given that I have an account registered in the system
	When I enter my incorrect CNPJ in the CNPJ field
	AND I enter my incorrect password in the password field
	AND I submit the form via the "Login" button
	Then the access page is reloaded
	And I get flashed a notice saying that I've entered incorrect credentials