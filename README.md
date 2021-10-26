# Truckers

A simple Rails 6 & Ruby 3.0.0 Application to be used for practice.

### Getting Started
* Use Ruby 3.0.0
* Fork the repo from Github
* cd into `Truckers`
* `bundle install`
* `rake db:create`
* `rails db:migrate`
* `rails server` and the application is up and running

### Scenario

This app is to help Drivers connect to Trucks that their companies own.
Admin users are able to add, edit, and delete trucks in their company's fleet.
Driver users are able to look at their company's fleet and reserve a truck.



1. After our server is up and running, we can start adding some data to the database. First we'll have to add some companies, since users and trucks are associated to companies, we can't create an user without creating a company (Just for test purposes, Definitely not recommended in real life). We can also see the list of companies along with their id's which will be needed to create our first user.
![1](https://user-images.githubusercontent.com/32256979/138837116-f640cf8f-81b3-4715-8358-85e1b8f22c56.PNG)


2. Enter the details and create a company.
![2](https://user-images.githubusercontent.com/32256979/138839298-a2bbe2dd-f866-4e06-a586-887e2bca7ae8.PNG)

3. Once we've created a company, we can start our sign-up process(We can also give the user admin privileges. Ideally only admin users should be allowed to give that permission but since our database is empty, this is the only way we can create an admin user)
![3](https://user-images.githubusercontent.com/32256979/138841154-c0cd3244-048f-4bb9-90fe-074bdf521037.PNG)

4. Now, we can login with our credentials that we just created
![4](https://user-images.githubusercontent.com/32256979/138840511-a830fac1-4f17-4b70-b4be-52785ed1572a.PNG)

5. Admin Users will be able to see all the users, trucks and companies inside the database
![5](https://user-images.githubusercontent.com/32256979/138841920-3bf518bc-847b-47a6-8702-49556eb827c9.PNG)
![6](https://user-images.githubusercontent.com/32256979/138842489-3c5fe9a7-4bcb-41d2-b631-90ed63e8871f.PNG)


6. Normal users can only reserve a truck ...and see the list of companies(as we've established before, not the best practice, but we'll let this slide)
![7](https://user-images.githubusercontent.com/32256979/138842469-88c4221d-1d38-420b-86c3-6f64bf7162be.PNG)

