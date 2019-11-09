# Two-side Marketplace : A study in developing on Ruby-on-Rails in the blind

---

## Defining Purpose and Problem

> What is the need that you will be addressing in your project?
 - The need I will be addressing is for parents of young children being able to clothe them more economically and finding a solution for clothes that no longer fit their children.
> Identify the problem you’re trying to solve by building this particular marketplace App?
-  The cost of clothing your children is very expensive if you buy new from retail outlets. I am hoping to provide an alternative to this where it is cheaper or subsidised by the selling of your child's clothes when they are too small for them.

> Why is it a problem that needs solving?
- It is a problem that needs solving on a number of levels. Mainly financially for the families, with the cost of living going up, saving where you can allows you to have money for other costs. Also cutting back on wastage. We live in a world where we need to recycle where we can, we can with kids clothes as well.
> Describe the project you will be conducting and how your App will address the needs.
 - Being a father of three young children, I have noticed that they outgrow clothes before the clothes are worn out or sometimes even put on. These items if not used for other kids in the family (i.e. 'hand-me-downs') usually end up binned or given to charity shops. While I have no problem giving these items to charity shops, young families need all the help they can get financially so I am hoping to create a market app that will allow parents to sell these clothes on at a fraction of the price as well as buy clothes at the right size at a fraction of the price. 
---
### Links
- Link to Deployed App on Heroku
[https://protected-shore-54205.herokuapp.com/](https://protected-shore-54205.herokuapp.com/)
- Link to GitHub Repo for Market App
[https://github.com/PhilHarps/Market_Place_App](https://github.com/PhilHarps/Market_Place_App)

### Functionalities
 Below is a list of functions my app has:
 - Authentication: You can browse and buy items as a public user, or setup a user where you can also sell items
 - Authorisation: As a signed up user you can add and edit an item, see a list of all your items separate from everyone else's items. There is also an admin user that can delete and edit any listing.
 - Upload Image: You can upload images of your clothing when selling an item.
 - Payment: i integrated a third party payment system to manage payments for orders.
---

### Unresolved Problems
 - Some of the buttons (such as edit, delete) are clunky, as in hovering over word, to activate seems off centre.
 - Some of the welcome messages need to be edited so they only appear on login and don't stay there until you log out
 - When a user sells an item they are able to buy there own item.
 - When you sell an item the initial image needs to have a border around it.
 - Unfortunately no time to do some test driven development. Had installed the R Spec gem to do this task.
 - I would like to refactor some of the code base where some of it is redundant or could be coded better. 
---
### Future Updates
 These are features not yet attempted:
 - I would like to add a search facility so you can search by item size.
 - I would also like to implement a message service between buyer, seller and admin.
 -  Setup of a mail notification system such as the gem mailgun to notify people of sign up, activate account etc.
 - Implement an admin dashboard.
 
---

### Screenshots
- Sitemap:
<img src="https://github.com/PhilHarps/Market_Place_App/blob/master/docs/sitemap.JPG" width="500">
- Home Page:
<img src="https://github.com/PhilHarps/Market_Place_App/blob/master/docs/Screenshots/home.JPG" width="500">
- Login Page:
<img src="https://github.com/PhilHarps/Market_Place_App/blob/master/docs/Screenshots/login_page.JPG" width="500">
- SignUp Page:
<img src="https://github.com/PhilHarps/Market_Place_App/blob/master/docs/Screenshots/signup_page.JPG" width="500">
- New Item Page:
<img src="https://github.com/PhilHarps/Market_Place_App/blob/master/docs/Screenshots/new_item_page.JPG" width="500">
- All Items Page:
<img src="https://github.com/PhilHarps/Market_Place_App/blob/master/docs/Screenshots/all_items_page.JPG" width="500">
- Stripe Pay Page:
<img src="https://github.com/PhilHarps/Market_Place_App/blob/master/docs/Screenshots/stripe_pay_page.JPG" width="500">
- Trello Image 1:
<img src="https://github.com/PhilHarps/Market_Place_App/blob/blob/master/docs/Trello/Trello1.JPG" width="500">
- Trello Image 2:
<img src="https://github.com/PhilHarps/Market_Place_App/blob/blob/master/docs/Trello/Trello2.JPG" width="500">

### Target Audience
The target audience for this project would be primarily parents or guardians of children. This would also include extended family such as grandparents, uncles and aunts. From a personal point of view this app would also target any future perspective employers. 

### Tech Stack

> Identify and describe the software to be used in your App.

- HTML, CSS3, SCSS, JavaScript for visual styling
- GitHub for version control
- Ruby-on-Rails for development
- Heroku for deployment
- Rails Gems (see below) for extending functionalities beyond MVC
- Trello for user stories and work flow.
- Lucid Chart for site map and ERD

> Detail any third party services that your App will use.
- Cloudinary: To manage Image upload
- Stripe: To manage payments
- GitHub: To manage version control
- Heroku: To deploy live app
- Bulma: for styling

#### Gem Dependencies
- R Spec: for testing 
- Cloudinary: For image upload
- Stripe: For payment management
- Bulma: For styling
- Rolify: For authorisation
- Devise: For authentication

### Structure of Application

> Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).


> Describe the architecture of your App. Explain the different high-level components (abstractions) in your App.

**Model**

**Controllers**

**Views**

The MVC separation of concerns was demonstrated by data validation handled within the models. Page redirection and ferrying form-submitted data happened in the controllers. And the views display different functions based on the type of user currently logged in.


### Project Plan & Design process

> Discuss how Agile methodology is being implemented in your project.



### Workflow And User Stories

> Provide User Stories and Workflow for your App	

See my Trello board for user stories and work flow.
[https://trello.com/b/Bmh3qyZS/babyclothesmarket](https://trello.com/b/Bmh3qyZS/babyclothesmarket)
 

### Wireframes for your application

> Provide Wireframes for your App.

### Database Structure Entity Relationship Diagrams

> Discuss the database relations to be implemented.

> Describe your project’s models in terms of the relationships (active record associations) they have with each other.

> Provide your database schema design.

**Initial Design**

**Revised Design**

> Identify the database to be used in your App and provide a justification for your choice.

> Identify and describe the production database setup (i.e. postgres instance).


### Security

> Discuss and analyse requirements related to information system security.

> Research what your legal obligations are in relation to handling user data.


### Attribution

