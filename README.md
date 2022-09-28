# Jungle

Jungle is a mini e-commerce application built with Rails 6.1.

## <ins>Added Features</ins>

### User Authentication
* Full User Registration & Authenticaion system, utilizing bcrypt for hashed passwords.

### Admin Controls
* Implemented Admin authentication requirement for all Admin actions.

* Admins have ability to view and create new categories.

* Admins can create new products assigned to newly created categories.

### Store features
* Dynamically added Sold-out badges on out of stock products

* Empty Cart Indicator

* Developed an Order Summary page
* Stripe payment integration

## Final Product
!['final-product'](https://github.com/mo-ab93/jungle-rails/blob/master/app/assets/images/Screen%20Shot%202022-09-28%20at%202.54.27%20PM%202.png)
!['final-product'](https://github.com/mo-ab93/jungle-rails/blob/master/app/assets/images/Screen%20Shot%202022-09-28%20at%202.56.08%20PM%20(2).png)
!['final-product'](https://github.com/mo-ab93/jungle-rails/blob/master/app/assets/images/Screen%20Shot%202022-09-28%20at%202.59.44%20PM%20(2).png)
!['final-product'](https://github.com/mo-ab93/jungle-rails/blob/master/app/assets/images/Screen%20Shot%202022-09-28%20at%203.02.24%20PM%20(2).png)
!['final-product'](https://github.com/mo-ab93/jungle-rails/blob/master/app/assets/images/Screen%20Shot%202022-09-28%20at%203.03.25%20PM%20(2).png)
!['final-product'](https://github.com/mo-ab93/jungle-rails/blob/master/app/assets/images/Screen%20Shot%202022-09-28%20at%203.05.05%20PM%20(2).png)
!['final-product'](https://github.com/mo-ab93/jungle-rails/blob/master/app/assets/images/Screen%20Shot%202022-09-28%20at%203.06.12%20PM%20(2).png)
!['final-product'](https://github.com/mo-ab93/jungle-rails/blob/master/app/assets/images/Screen%20Shot%202022-09-28%20at%203.07.23%20PM%20(2).png)


## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe


## Setup
1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>



