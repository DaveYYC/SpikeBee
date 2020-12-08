November 2020 update:

 - GMAIL: contactus@spikebee.com  PASSWORD UPDATED TO: Spikebee2020!!! - **3 exclamation points**
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 - MS Visual Studio right-click on the project (named: Website) and select publish, can then view the link and database set up
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

 Site is currently published to Microsoft Azure Free Trial Account and this is the published link:

    ***  https://spikebee-test.azurewebsites.net (can log into Spikebee user: contactus@spikebee.com, pass: Password1!) ***

 Free Trial Account Link/Login: https://portal.azure.com  USERNAME: contactus@spikebee.com  PASSWORD: 1a2b3c4d5e!! 

 SpikeBeeDB2 (spikebee/SpikeBeeDB2) is the Server/Database connected to the site. Use Query Editor to view/edit the tables

  - if needed the Username for the database is: spikebee and the password is: 1a2b3c4d5e!! (also in the connection string). IF Azure says error no access, click Home in the top left.

 Can add Credit Card to the Microsoft Free account to change the subscription to paid then you can add the GoDaddy Domains to the site.

 GoDaddy.com Username: 55122052 PASSWORD: Calgary2020!!

 ** will need to shutdown the Amazon account **

  This link is the instructions to Map existing DNS to Azure
  - https://docs.microsoft.com/en-ca/azure/app-service/app-service-web-tutorial-custom-domain

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 - MS Visual Studio right-click on the project (named: Website) and select publish to AWS Beanstalk, can then view the link. (Also use View AWS Explorer)
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

 - Also published to the curent AWS account: Username Jo@spikebee.com Password: Calgary123!!   http://website-dev1.us-west-2.elasticbeanstalk.com/ **

 - site opens, however we were unable to create/connect a database. Will require a database to function and the current site EC2 instances deleted and the domain swapped.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------

 SENDGRID Email Service using contactus@spikebee.com: for login confirmations and messages.

  **! Currently sign up will only work with GMAIL addresses !***

 - need to login to SendGrid account and configure DNS for the domain spikebee.com/ca in GoDaddy once the domain has been set up with the new published site. 
 - this needs to be done so contactus@spikebee.com becomes "trusted" and emails can be sent to all types of addresses.

 https://app.sendgrid.com/login   USERNAME: contactus@spikebee.com  PASSWORD(16 chars): 1a2b3c4d5e6f7g8h9i (Should also get prompted to set up 2 Factor Authentication)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------

 SQL Database Script is included in the file folder, will need to delete the user data and example programs once the database is populated 

 All website images are sourced from PixBay. They are royalty free and require no accreditation 

 FYI: published version will not work with a secrets file. SendGrid Api and Connection string data moved to appsettings.json 


 
