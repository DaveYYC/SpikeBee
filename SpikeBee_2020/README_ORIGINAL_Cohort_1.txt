<<<<<<< HEAD
Information about the SpikeBee website design. Please contact SpikeBee owner for future website design requirements, code modifications, etc.

*** Website design attempt:

    The idea behind this project, which is unfinished, was to create a website that would do the following:
    - parents and vendors can sign up and log in. Google, facebook and other authentication methods can be used
    - vendors can add programs for kids (classes, camps and events)
    - vendors can modify programs, save programs for next year, delete programs
    - parents can search programs, favorite programs, rate programs (1 to 5 stars), share programs on social media
    - parents can click on program link which redirects them to vendor website to sign up for the activity
    - website uses user location to show programs to users
    - parents can save programs 
    - advertisements would show to parents when searching programs
    - vendors can only choose one image for programs. Vendors select the image from a group of curated images to maintain consistency


****** What was completed in the project?

*** SpikeBee Visual Studio solution:

    The SpikeBee solution is based on a ".NET Core Web Application" template. The application was created using "Web Application (Model-View-Controller)" project template. "Configure for HTTPS" and "Individual User Accounts" authentication were selected during project creation.

    Bitbucket version control repository hosting service was used to host the solution.

    gitignore file was auto generated when creating the Bitbucket repository where the project is.
    
*** Authentication:

    .NET Core Identity was chosen for user authentication. https://docs.microsoft.com/en-us/aspnet/core/security/authentication/identity?view=aspnetcore-3.1&tabs=visual-studio 

    When a project is created using Identity, the Areas folder is created. If you need to modify some of the identity views, you need to scaffold them. See section "Scaffold Identity into an MVC project without existing authorization" in https://docs.microsoft.com/en-us/aspnet/core/security/authentication/scaffold-identity?view=aspnetcore-3.1&tabs=visual-studio 

    The default .NET Core Identity AspNetUsers table was modified to include the following columns:
    - FirstName
    - LastName 
    - SignUpDate
    To modify the table the ApplicationUsers class was created under Data directory. Reference: https://docs.microsoft.com/en-us/aspnet/core/security/authentication/add-user-data?view=aspnetcore-3.1&tabs=visual-studio

    *** Send emails (account verification, change password, etc):

    Emails are sent using SendGrid email delivery service. .NET Core Identity does not have a send email functionality out of the box.

    In order to use SendGrid to send emails, the following is required:
    - a SendGrid account(it has to be an email other than gmail, yahoo, etc. It doesn't work with these domains). Select a Free SendGrid plan when creating your account. https://sendgrid.com/pricing/ 
    - an API Key
    - SendGrid NuGet package on Visual Studio

    The class EmailSender in directory Areas -> Identity was created to manage send email functionality using SendGrid NuGet package. services.AddTransient<IEmailSender, EmailSender>(); was added to IdentityHostingStartup class under Areas -> Identity directory for this purpose. 

    The following lines need to be added to appsettings.json or secrets.json:
    "SendGrid:FromName": "SpikeBee",
    "SendGrid:FromEmail": "Email address registered as sender on SendGrid",
    "SendGrid:ApiKey": "SendGrid API Key"

    How to create a SendGrid API Key:

    - Create a Single Sender Verification. After signing in on SendGrid, from the left pane select Settings -> Sender Authentication. Create a new sender authentication. After email is verified (check your spam folder), go ahead and create an API Key
    - Create an API Key: https://sendgrid.com/docs/ui/account-and-settings/api-keys/
    At this point you are ready to send emails using SendGrid.

    See comments on the EmailSender class code.

*** External provider authentication using Facebook

    Facebook authentication was programmed. To be able to use it, credentials are needed. See link below.
    - Create external login:
    https://docs.microsoft.com/en-us/aspnet/core/security/authentication/social/facebook-logins?view=aspnetcore-3.1
    - Add the following information to appsettings.json or secrets.json file:
    "Authentication:Facebook:AppSecret": "AppSecret code goes here",
    "Authentication:Facebook:AppId": "AppId code goes here"

*** User SignUp/Registration Process

    Identity is used for having two factor authentication for User Registration.
    IsVendor and IsParent Claims are created for Users based on userType in Registration.cshtml code behind file.
    UserType: Vendor,Parent.
    There are two types of Users:
        Parent : Use Identity's registration  Model. Users will get confirmation email after the registration process is successful.
               Once registered User record is created in AspNetUser table in database, which is provided by Identity framework.
       
       Vendor: Use Identity's registration Model. This User Type has a two-step registration process. 
                Step 1: Same as the Parent (that means uses Identity Registration Model ), but has a NEXT button. 
                        User gets a registration confirmation email after finishing this step. 
                User is created in the AspNetUser table in database.
                Step 2: User has to provide additional information to complete the registration process.
       
                To be done: Vendor who is having two step registration should get registration confirmation email after finishing Step2. 

*** 2 factor authentication

 It is programmed with capability of using an external authentication app. After signing up or signing in, click on the user's name and the Two Factor Authentication option appears on the left. After clicking this option, click on "Add authentication app" button

*** SpikeBee database design
 
    - The database for SpikeBee is created using Entity Framework Code First approach. The Entity Model classes are created in Models folder.
      Dbsets for the models are added in ApplicationDbcontext.cs which is in Data folder.

      https://docs.microsoft.com/en-us/ef/ef6/modeling/code-first/workflows/new-database 

*** Contact us page

    Using SendGrid sends a message to the email address set in the app secrets file or appsettings.json.
    Example code in secrets.json:
    "SendGrid:FromName": "SpikeBee",
    "SendGrid:FromEmail": "student@edu.sait.ca",
    "SendGrid:ToEmail": "hello@spikebee.com", 
    "SendGrid:ApiKey": "Test-falseAPIKey-dsgwgnl34534ty4get345"

    Example of message received by SpikeBee:
    User's email: sam@mail.com Message: Hi there. Great website. Keep the good work! PhoneNumber: 1231231234 


*** HTML5, CSS3, JavaScript and Bootstrap4 are used for the Front End Styling and webpage design. 

    - The _Layout.cshtml file contains the general styling mainly header and footer for all web pages of the website.
    - The CSS styling of the website is contained in the site.css file. 
    - The home page of the website file is index.cshtml which is placed in the Home folder.
    - It is a responsive website tested for all major screen sizes like mobile, mobile plus size, tablet / ipad , desktop / laptop screen size and larger monitor displays. 

    - Page content; Align content on index, login, parent, vendor, contact & privacy pages.
	
    - Logo & Photos; placed SpikeBee logo and activities photos.

    - Containers; To layout element for responsive utility. 
      https://getbootstrap.com/docs/4.4/layout/overview/

    - Social media-icons; To redirect users to spikebee social media page.
      https://fontawesome.com/6?next=%2F#more-icons-styles

    - Bootstrap cards: To create hover effect on activity photos.
      https://www.youtube.com/watch?v=2qQxwT-Qm5E

    - Footer positioning: To position footer properly.
      https://www.freecodecamp.org/news/how-to-keep-your-footer-where-it-belongs-59c6aa05c59c/

   - Flexbox: Allows items on footer to reposition according to screen size.
     https://css-tricks.com/snippets/css/a-guide-to-flexbox/


*** Further improvements on the work done (this does not include other functionalities to be added - see beginning of this documentation)

    Work on the front-end design for pages created

    Add authorization for logged-in users

    Modify code to send email after second step in Vendor sign up process instead of after first step


*** Notes, resources:

    - Images on this website are for design testing purposes only. Check image license for commercial use before deploying the website. Free images for commercial use: https://unsplash.com/. 
    - Font awesome was used for social media links. Please check license for commercial use
=======
Information about the SpikeBee website design. Please contact SpikeBee owner for future website design requirements, code modifications, etc.

*** Website design attempt:

    The idea behind this project, which is unfinished, was to create a website that would do the following:
    - parents and vendors can sign up and log in. Google, facebook and other authentication methods can be used
    - vendors can add programs for kids (classes, camps and events)
    - vendors can modify programs, save programs for next year, delete programs
    - parents can search programs, favorite programs, rate programs (1 to 5 stars), share programs on social media
    - parents can click on program link which redirects them to vendor website to sign up for the activity
    - website uses user location to show programs to users
    - parents can save programs 
    - advertisements would show to parents when searching programs
    - vendors can only choose one image for programs. Vendors select the image from a group of curated images to maintain consistency


****** What was completed in the project?

*** SpikeBee Visual Studio solution:

    The SpikeBee solution is based on a ".NET Core Web Application" template. The application was created using "Web Application (Model-View-Controller)" project template. "Configure for HTTPS" and "Individual User Accounts" authentication were selected during project creation.

    Bitbucket version control repository hosting service was used to host the solution.

    gitignore file was auto generated when creating the Bitbucket repository where the project is.
    
*** Authentication:

    .NET Core Identity was chosen for user authentication. https://docs.microsoft.com/en-us/aspnet/core/security/authentication/identity?view=aspnetcore-3.1&tabs=visual-studio 

    When a project is created using Identity, the Areas folder is created. If you need to modify some of the identity views, you need to scaffold them. See section "Scaffold Identity into an MVC project without existing authorization" in https://docs.microsoft.com/en-us/aspnet/core/security/authentication/scaffold-identity?view=aspnetcore-3.1&tabs=visual-studio 

    The default .NET Core Identity AspNetUsers table was modified to include the following columns:
    - FirstName
    - LastName 
    - SignUpDate
    To modify the table the ApplicationUsers class was created under Data directory. Reference: https://docs.microsoft.com/en-us/aspnet/core/security/authentication/add-user-data?view=aspnetcore-3.1&tabs=visual-studio

    *** Send emails (account verification, change password, etc):

    Emails are sent using SendGrid email delivery service. .NET Core Identity does not have a send email functionality out of the box.

    In order to use SendGrid to send emails, the following is required:
    - a SendGrid account(it has to be an email other than gmail, yahoo, etc. It doesn't work with these domains). Select a Free SendGrid plan when creating your account. https://sendgrid.com/pricing/ 
    - an API Key
    - SendGrid NuGet package on Visual Studio

    The class EmailSender in directory Areas -> Identity was created to manage send email functionality using SendGrid NuGet package. services.AddTransient<IEmailSender, EmailSender>(); was added to IdentityHostingStartup class under Areas -> Identity directory for this purpose. 

    The following lines need to be added to appsettings.json or secrets.json:
    "SendGrid:FromName": "SpikeBee",
    "SendGrid:FromEmail": "Email address registered as sender on SendGrid",
    "SendGrid:ApiKey": "SendGrid API Key"

    How to create a SendGrid API Key:

    - Create a Single Sender Verification. After signing in on SendGrid, from the left pane select Settings -> Sender Authentication. Create a new sender authentication. After email is verified (check your spam folder), go ahead and create an API Key
    - Create an API Key: https://sendgrid.com/docs/ui/account-and-settings/api-keys/
    At this point you are ready to send emails using SendGrid.

    See comments on the EmailSender class code.

*** External provider authentication using Facebook

    Facebook authentication was programmed. To be able to use it, credentials are needed. See link below.
    - Create external login:
    https://docs.microsoft.com/en-us/aspnet/core/security/authentication/social/facebook-logins?view=aspnetcore-3.1
    - Add the following information to appsettings.json or secrets.json file:
    "Authentication:Facebook:AppSecret": "AppSecret code goes here",
    "Authentication:Facebook:AppId": "AppId code goes here"

*** User SignUp/Registration Process

    Identity is used for having two factor authentication for User Registration.
    IsVendor and IsParent Claims are created for Users based on userType in Registration.cshtml code behind file.
    UserType: Vendor,Parent.
    There are two types of Users:
        Parent : Use Identity's registration  Model. Users will get confirmation email after the registration process is successful.
               Once registered User record is created in AspNetUser table in database, which is provided by Identity framework.
       
       Vendor: Use Identity's registration Model. This User Type has a two-step registration process. 
                Step 1: Same as the Parent (that means uses Identity Registration Model ), but has a NEXT button. 
                        User gets a registration confirmation email after finishing this step. 
                User is created in the AspNetUser table in database.
                Step 2: User has to provide additional information to complete the registration process.
       
                To be done: Vendor who is having two step registration should get registration confirmation email after finishing Step2. 

*** 2 factor authentication

 It is programmed with capability of using an external authentication app. After signing up or signing in, click on the user's name and the Two Factor Authentication option appears on the left. After clicking this option, click on "Add authentication app" button

*** SpikeBee database design
 
    - The database for SpikeBee is created using Entity Framework Code First approach. The Entity Model classes are created in Models folder.
      Dbsets for the models are added in ApplicationDbcontext.cs which is in Data folder.

      https://docs.microsoft.com/en-us/ef/ef6/modeling/code-first/workflows/new-database 

*** Contact us page

    Using SendGrid sends a message to the email address set in the app secrets file or appsettings.json.
    Example code in secrets.json:
    "SendGrid:FromName": "SpikeBee",
    "SendGrid:FromEmail": "student@edu.sait.ca",
    "SendGrid:ToEmail": "hello@spikebee.com", 
    "SendGrid:ApiKey": "Test-falseAPIKey-dsgwgnl34534ty4get345"

    Example of message received by SpikeBee:
    User's email: sam@mail.com Message: Hi there. Great website. Keep the good work! PhoneNumber: 1231231234 


*** HTML5, CSS3, JavaScript and Bootstrap4 are used for the Front End Styling and webpage design. 

    - The _Layout.cshtml file contains the general styling mainly header and footer for all web pages of the website.
    - The CSS styling of the website is contained in the site.css file. 
    - The home page of the website file is index.cshtml which is placed in the Home folder.
    - It is a responsive website tested for all major screen sizes like mobile, mobile plus size, tablet / ipad , desktop / laptop screen size and larger monitor displays. 

    - Page content; Align content on index, login, parent, vendor, contact & privacy pages.
	
    - Logo & Photos; placed SpikeBee logo and activities photos.

    - Containers; To layout element for responsive utility. 
      https://getbootstrap.com/docs/4.4/layout/overview/

    - Social media-icons; To redirect users to spikebee social media page.
      https://fontawesome.com/6?next=%2F#more-icons-styles

    - Bootstrap cards: To create hover effect on activity photos.
      https://www.youtube.com/watch?v=2qQxwT-Qm5E

    - Footer positioning: To position footer properly.
      https://www.freecodecamp.org/news/how-to-keep-your-footer-where-it-belongs-59c6aa05c59c/

   - Flexbox: Allows items on footer to reposition according to screen size.
     https://css-tricks.com/snippets/css/a-guide-to-flexbox/


*** Further improvements on the work done (this does not include other functionalities to be added - see beginning of this documentation)

    Work on the front-end design for pages created

    Add authorization for logged-in users

    Modify code to send email after second step in Vendor sign up process instead of after first step


*** Notes, resources:

    - Images on this website are for design testing purposes only. Check image license for commercial use before deploying the website. Free images for commercial use: https://unsplash.com/. 
    - Font awesome was used for social media links. Please check license for commercial use
>>>>>>> 3036b27769caa0840155f44af15abd6dbf2cbb5b
    - Google fonts were used throughout the project. Google fonts are free to use for commercial projects: https://developers.google.com/fonts 