Feature: Add assets on Elinvar
I want to add asset

Scenario: Add asset
Given I open the Page for Elinvar
And I click on Add Asset
And I click on text box and enter asset as <AssetNo> and submit
When I click on send Button
Then I should get message <OutputMessage> that its added 
Examples:
|AssetNo         |OutputMessage    |
|ASDF4567567867  |successfully added|
|AS2345675676    |Invalid format    | 
|1234567876ASSS  |successfully added|
|123456ASDF5678  |successfully added|
|@123456567HJDF  |Invalid format    |
|     RTGH4567456776|Invalid format |
|123456ERTG         |Invalid format |
|HT  8 5678 TH 7 5656|Invalid format|

