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
<img src="https://github.com/PhilHarps/Market_Place_App/blob/master/docs/Trello/Trello1.JPG">
- Trello Image 2:
<img src="https://github.com/PhilHarps/Market_Place_App/blob/master/docs/Trello/Trello2.JPG" >

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
- Zoho to produce slideshow

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


### Workflow And User Stories

> Provide User Stories and Workflow for your App	

See my Trello board for user stories and work flow.
[https://trello.com/b/Bmh3qyZS/babyclothesmarket](https://trello.com/b/Bmh3qyZS/babyclothesmarket)
 

### Wireframes for your application

> Provide Wireframes for your App.
<img src="https://github.com/PhilHarps/Market_Place_App/blob/master/docs/wireframes/desktop_wireframe.jpeg" width="500">
<img src="https://github.com/PhilHarps/Market_Place_App/blob/master/docs/wireframes/mobile_wireframe1.jpeg" width="500">
<img src="https://github.com/PhilHarps/Market_Place_App/blob/master/docs/wireframes/mobile_wireframe2.jpeg" width="500">

ERD (Database Schema) for Baby Clothes Bazaar App:
<img src="https://github.com/PhilHarps/Market_Place_App/blob/master/docs/Baby%20Clothes%20Market%20ERD.pdf" width="500">

### Mechanics of App
Below I will give a brief description of the mechanics of the baby clothes bazaar app, detailing what the models, controllers and views do and how they interact.

#### Models
I created four models for  this app: item, order, user and role.
- role
The role model was created as part of the Rolify gem to manage user authorisation. In the role model it validates inclusion in Rolify and, has and belongs to many. To manage this it created a join table called users_roles.

- user
The user model was created for the Devise gem. It can keep track of users credentials, upon creation it allocates a role automatically from Rolify. I put a method in there to validate this so if a user has no role it will assign one. The user can have many items and many orders.

- order
The order model like all the models is a child of the Application record. It belongs to the user and has many items.

- item
 the item model belongs to the user and has one attached image. It validates the description, price, and numericality for presence and the numericality to be greater then 0.
 
#### Controllers
- Application Controller
In the application controller there is a before action and a protected method for the Devise gem. 

- Orders Controller
The orders controller, like the items controller is a child of the Application controller. Stripe has a require in the order controller and in the new method is where stripe creates a session. There is an index method to list all orders, a complete method to redirect you to the home page after you have bought an item, and a cancel and update method that makes use of flash alerts and notices. I have created an order_params method to require :order and permit :user and :items. I also created an authorise method so if the current user is not the order user or admin they can't edit anything and a flash message appears before redirecting them to the home page.

- Items Controller
In the items controller I have setup a before action to authenticate user only when the new, create, update or destroy method is called. there is a before action also for authorise and to fetch item upon calling edit, update and destroy, and the fetch item is also used for calling the show method. there are index and user _index methods so you can list all items or just the current logged in users items. In create and update methods you can attach an image and have also used flash alerts to let the user know if they were successful or not. In the private part of the controller I have set up an authorise method just like in the orders controller and a params method that requires an :item and permits :description, :price, :size, :condition, :gender, :image.

#### Views

To try to keep my code dry I used the application.html.erb and created three partials. One for the nav bar one for forms and one for item. The nav partial helped as it appeared on all pages. The forms partial was used for both the edit and new view. The item partial was used for the index and user_index view. Most of my views were created when I created the items controller. I initially created a pages model but deleted it as I was only using it for the home page. I created one in my items view instead. With more time I feel more refactoring could be done and organising of my views to make it cleaner and smoother code.

### Allocation of Tasks
Being a one person project allocation of tasks was all down to myself. To help me with this I used Trello which you can see from the above link and screenshots. Below is a timeline of how the project unfolded over the timeframe given.

<img src="https://github.com/PhilHarps/Market_Place_App/Market_Place_App/blob/master/docs/Timeline.png" width="500">

