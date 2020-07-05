# Bamazon
## Bamazon
A mock storefront with departments and products. Customers, managers, and supervisors are able to use this app.

## Motivation
A Node app for customers to view items and place orders, for managers to perform inventory control and add new products, and for supervisors to track department profitability and add new departments.

## Tech/framework used

#### Built with

- Node.js
- Javascript
- MySQL
- inquirer
- console.table

### Features

Inquirer provides an easy to use UI with prompts asking the user what they would like to do.Customers may purchase products from the available products in the database.

Managers have the ability to add inventory and new products to the databse.

Supervisors have the ability to view profit data by department and add new departments.

Console table organizes product, inventory, and department data in a concise manner within the CLI.

User input validation is present to ensure that customers cannot purchase more inventory than Bamazon has in stock, managers don't add products with no inventory, and supervisors cannot add departments that already exist.

### Installation
- Install Node js

- Clone the Bamazon repository to your machine

- Open CLI, navigate to the cloned repository, and run the      following to install the npm package dependencies npm install.

- Open MySQL Workbench, SQL Pro, or your preferred database    management app. Open the "bamazon.sql" script from the cloned repo, and run it to set up the database and base product/department data.

- Next, within the cloned repo, you'll need to create a pw.js   file with the following code, and add your password to access your root server to that file. This file is a dependency for the app. If you do not require a password to access your root, simply leave the pw property as an empty string.

  var pwd = {
	pw: "YOUR PASSWORD HERE"
  }
	
### How to use?

#### Customers

- Run the following in your CLI while inside your cloned repo directory

  node bamazonCustomer.js

- Select from the resulting screen whether you would like to view items or leave.

    If you select view items, input and enter the item id that you would like to purchase

    Input and enter the quantity that you would like to buy

    If you would like to buy another item, repeat

    If you would like to leave, click exit

#### Managers

- Run the following in your CLI while inside your cloned repo directory

  node bamazonManager.js
- Select from the resulting screen whether you would like to view products for sale, view low inventory, add to inventory, add new product, or exit.

    If you select add to inventory, follow the prompts for item id to increase inventory on and quantity to increase inventory

    If you select add new product, follow the prompts for item name, department, price, and quantity in stock

    When you are ready to leave, click exit

#### Supervisors

- Run the following in your CLI while inside your cloned repo directory

  node bamazonSupervisor.js

- Select from the resulting screen whether you would like to view product sales by department, create a new department, or exit.

If you select create new department, follow the prompts for department name and overhead costs

When you are ready to leave, click exit.

### Images

![img1](https://user-images.githubusercontent.com/25557837/86536906-33b89100-bea0-11ea-9ee1-b272ee188019.PNG)
![img2](https://user-images.githubusercontent.com/25557837/86536907-34512780-bea0-11ea-9d48-2611b26ebd6e.PNG)
![img3](https://user-images.githubusercontent.com/25557837/86536908-34512780-bea0-11ea-89e3-f90f4496a1dd.PNG)
![img4](https://user-images.githubusercontent.com/25557837/86536909-34e9be00-bea0-11ea-8740-9e611f12fb86.PNG)
![img5](https://user-images.githubusercontent.com/25557837/86536910-34e9be00-bea0-11ea-8950-e314b53930e2.PNG)
![img6](https://user-images.githubusercontent.com/25557837/86536911-34e9be00-bea0-11ea-81e4-69bdc7d43dfc.PNG)
![img7](https://user-images.githubusercontent.com/25557837/86536912-35825480-bea0-11ea-99e0-f0ed9a788452.PNG)
![img8](https://user-images.githubusercontent.com/25557837/86536913-35825480-bea0-11ea-9b83-19d26b5747a3.PNG)

#### Bamazon in Action

<iframe width="560" height="315" src="https://www.youtube.com/embed/6IKr_RAvpkA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>




<iframe width="560" height="315" src="https://www.youtube.com/embed/UaPcrGbwpTQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
