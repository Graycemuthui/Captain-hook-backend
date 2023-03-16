Customer.destroy_all
Order.destroy_all
Product.destroy_all

customer = Customer.create([
                             { first_name: 'John', last_name: 'Legend', email: 'johnlegend20@gmail.com', address: '23000-38920 Vale Avenue',
                               city: 'Kisumu', country: 'Kenya' },
                             { first_name: 'Peter', last_name: 'Jones', email: 'peterjones@gmail.com', address: '23342-38432 Wood Avenue',
                               city: 'Machakos', country: 'Kenya' },
                             { first_name: 'Sandra', last_name: 'Mutinda', email: 'sandramutinda@gmail.com', address: '23131=23422 Kiwi Avenue',
                               city: 'Eldoret', country: 'Kenya' },
                             { first_name: 'Kisawe', last_name: 'Muivs', email: 'kisawemuivs20@gmail.com', address: '02392-39103 Losi Avenue',
                               city: 'Nairobi', country: 'Kenya' },
                             { first_name: 'Shaquille', last_name: 'Ndunda', email: 'johnlegend20@gmail.com', address: '39403-98394 Boko Avenue',
                               city: 'Musinga', country: 'Kenya' }
                           ])

order = Order.create([
                       { total_price: Regexp.last_match(1000), status: 'Paid', payment_method: 'Visa',
                         shipping_address: '23000-38920 Vale Avenue' },
                       { total_price: Regexp.last_match(750), status: 'Pending', payment_method: 'Mpesa',
                         shipping_address: '23342-38432 Wood Avenue' },
                       { total_price: Regexp.last_match(500), status: 'Delivered', payment_method: 'Debit-card',
                         shipping_address: '23131=23422 Kiwi Avenue' },
                       { total_price: Regexp.last_match(470), status: 'Paid', payment_method: 'Visa',
                         shipping_address: '02392-39103 Losi Avenue' },
                       { total_price: Regexp.last_match(890), status: 'Pending', payment_method: 'Mpesa',
                         shipping_address: '39403-98394 Boko Avenue' }
                     ])

product = Product.create([
                           { name: "Michael Angelo's painting",
                             description: "Michael Angelo's painting on top of the Palace of Versailles", price: Regexp.last_match(1000), stock: 1, image_url: 'https://images.unsplash.com/flagged/photo-1572392640988-ba48d1a74457?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YXJ0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60', category: 'art' },
                           { name: 'Flowers painting', description: 'Flowers in a Metal Vase', price: Regexp.last_match(750), stock: 1,
                             image_url: 'https://images.unsplash.com/photo-1579783902614-a3fb3927b6a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=445&q=80', category: 'art' },
                           { name: 'Hand painting', description: 'Hand reaching out', price: Regexp.last_match(500), stock: 1,
                             image_url: 'https://images.unsplash.com/photo-1501472312651-726afe119ff1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80', category: 'art' },
                           { name: 'Where did you go?',
                             description: ' A painiting tha shows someone entrapped in their own thoughts', price: Regexp.last_match(470), stock: 1, image_url: 'https://images.unsplash.com/photo-1559102877-4a2cc0e37fce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fGFydHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60', category: 'art' },
                           { name: 'Woman in nature', description: 'A woman potrayed in nature', price: Regexp.last_match(1000),
                             stock: 1, image_url: 'https://images.unsplash.com/photo-1613957871189-f6165548ae02?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA4fHxhcnR8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60', category: 'art' }
                         ])
