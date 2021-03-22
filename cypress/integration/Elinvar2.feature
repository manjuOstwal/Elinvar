Feature: Search existing assets on Elinvar
I want to search asset

Scenario: Search asset
Given I open the Page for Elinvar
And I click on Existing Assets
And I click on text box and enter asset as <AssetNo>
When I click on search Button
Then I should get message <OutputMessage> if asset do not exist
Examples:
|AssetNo         |OutputMessage    |
|ASDF4567567867  |                  |
|AS2345675676AS  |Asset do not exist|
|A               |                  | 
