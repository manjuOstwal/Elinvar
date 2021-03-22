import { Given , And , Then , When} from "cypress-cucumber-preprocessor/steps";
    
//test steps 
Given('I open the Page for Elinvar', () => {
cy.visit('http://136.199.217.16:5000/');

And('I click on Existing Assets',() => {
cy.get("#root > div > div.ui.inverted.vertical.segment.AppHeader > div > div > a.active.item").click();
})

And ('I click on text box and enter asset as {string}', (AssetNo) => {
cy.get("#defaultFormSearchAsset").type(AssetNo);

})

When ('I click on search Button',() => {
cy.get("#root > div > div:nth-child(2) > div > div > form > div > div:nth-child(2) > button").click();

})
Then ('I should get message if asset do not exist' , (OutputMessage) => {
cy.get('#ActualMessage').contains(OutputMessage);
})
})