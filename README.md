## CAPTAIN HOOK

Full stack website for users to buy art.

## Built With

-Ruby
-Ruby on Rails
-PostgreSQL
-Heroku

## Getting Started

To get a local copy up and running follow these simple example steps. In your terminal, navigate to your current directory and run this code

git clone `https://github.com/Graycemuthui/Captain-hook-backend.git`

Then run:

cd Captain-Hook
Open in your preferred text editor. Run code . to open VScode.

## Setup

This guide assumes you have already installed the necessary dependencies to use a postgreSQL database and Ruby on Rails.

Change the ruby version in your gemfile to the version you have installed on your machine.
Add your credentials to the database.yml file.

Run:
`bundle install`
`npm install `
`rails db:create`
`rails db:migrate`
`rails db:seed`
`foreman start`

## API Endpoints

| Endpoint | Functionality |

To create a new customer, send a POST request to http://localhost:3000/api/v1/customers with the following body:

`{ first_name: 'John', last_name: 'Legend', email: 'johnlegend20@gmail.com', address: '23000-38920 Vale Avenue', city: 'Kisumu', country: 'Kenya' }`

To create a new orders, send a POST request to http://localhost:3000/api/v1/orders with the following body:

` { total_price: Regexp.last_match(1000), status: 'Paid', payment_method: 'Visa', shipping_address: '23000-38920 Vale Avenue' }`

To create a new products, send a POST request to http://localhost:3000/api/v1/products with the following body:

` { name: "Michael Angelo's painting", description: "Michael Angelo's painting on top of the Palace of Versailles", price: Regexp.last_match(1000), stock: 1, image_url'https://images.unsplash.com/flagged/photo-1572392640988-ba48d1a74457?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YXJ0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60', category: 'art' }`

To get all customers, send a GET request to http://localhost:3000/api/v1/customers

The response will be an array of all customers.

` [

                       { first_name: 'Kisawe', last_name: 'Muivs', email: 'kisawemuivs20@gmail.com', address: '02392-39103 Losi Avenue',
                         city: 'Nairobi', country: 'Kenya' },
                       { first_name: 'Shaquille', last_name: 'Ndunda', email: 'johnlegend20@gmail.com', address: '39403-98394 Boko Avenue',
                         city: 'Musinga', country: 'Kenya' }
                              ]`

To get all orders, send a GET request to http://localhost:3000/api/v1/orders

The response will be an array of all orders.

` [

                       { total_price: Regexp.last_match(1000), status: 'Paid', payment_method: 'Visa',
                         shipping_address: '23000-38920 Vale Avenue' },
                       { total_price: Regexp.last_match(750), status: 'Pending', payment_method: 'Mpesa',
                         shipping_address: '23342-38432 Wood Avenue' },
                              ]`

To get all products, send a GET request to http://localhost:3000/api/v1/products

The response will be an array of all orders.

` [

                      { name: "Michael Angelo's painting", description: "Michael Angelo's painting on top of the Palace of Versailles", price: Regexp.last_match(1000), stock: 1, image_url: 'https://images.unsplash.com/flagged/photo-1572392640988-ba48d1a74457?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YXJ0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60', category: 'art' },
                      { name: 'Flowers painting', description: 'Flowers in a Metal Vase', price: Regexp.last_match(750), stock: 1, image_url: 'https://images.unsplash.com/photo-1579783902614-a3fb3927b6a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=445&q=80', category: 'art' },
                              ]`

To delete a orders, send a DELETE request to http://localhost:3000/api/v1/orders/:id

Example :

` fetch(`api/v1/orders/${order.id}`, { method: "DELETE", headers: { "Content-Type": "application/json", }, });`

To delete a customer, send a DELETE request to http://localhost:3000/api/v1/customers/:id

Example:

` fetch(`/api/v1/customers/${customer.id}`, { method: "DELETE", headers: { "Content-Type": "application/json", }, })`

To delete a product, send a DELETE request to http://localhost:3000/api/v1/products/:id

Example:

` fetch(`/api/v1/products/${product.id}`, { method: "DELETE", headers: { "Content-Type": "application/json", }, })`

👤 **GRAYCEMUTHUI**

- GitHub: [@GrayceMuthui](https://github.com/Graycemuthui3)
- Twitter: [@Grayce_Muthui](https://twitter.com/Grayce_Muthui)
- LinkedIn: [@grayce-muthui](https://www.linkedin.com/in/grayce-muthui)

## Show your support

Give a star if you like this project!

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Graycemuthui/Captain-hook-backend/issues).

## 📝 License

This project is [MIT](LICENSE) licensed.
