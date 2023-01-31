Feature: First example

@sanity
Scenario: Successful Login with Valid Credentials 
	Given User Launch edge browser team
	When User open "http://admin-demo.nopcommerce.com/login" 
	And User as "" and Password as "" 
	And Click on 
	Then Page Title  "Dashboard / nopCommerce administration" 
	When User click
	Then Page Title should be "Your store. Login" 
	And close browser 
	
@regression
Scenario Outline: Login Data Driven 
	Given User Launch Chrome browser 
	When User opens URL "http://admin-demo.nopcommerce.com/login" 
	And User enters Email as "<email>" and Password as "<password>" 
	And Click on Login 
	Then Page Title should be "Dashboard / nopCommerce administration" 
	When User click on Log out link 
	Then Page Title should be "Your store. Login" 
	And close browser 
	
	Examples: 
		| email | password |
		| admin@yourstore.com	|	admin |
		| admin1@yourstore.com | admin123	|