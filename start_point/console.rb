require_relative('models/ticket')
require_relative('models/customer')
require_relative('models/film')

require('pry-byebug')

Ticket.delete_all()
Customer.delete_all()
Film.delete_all()

  film1 = Film.new({
    'title' => 'ET',
    'price' => 12
  })
  film1.save()


  film2 = Film.new({
    'title' => 'Jaws',
    'price' => 12
  })
  film2.save()

  film3 = Film.new({
    'title' => 'Close Encounters',
    'price' => 12
  })
  film3.save()

  customer1 = Customer.new({
    'name' => 'Noel',
    'funds' => 50
    })
    customer1.save()

  customer2 = Customer.new({
    'name' => 'Becky',
    'funds' => 100
  })
  customer2.save()

  customer3 = Customer.new({
    'name' => 'Jude',
    'funds' => 20
  })
  customer3.save()

  ticket1 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer1.id})
  ticket2 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer2.id})
  ticket3 = Ticket.new({'film_id' => film2.id, 'customer_id' => customer2.id})
  ticket4 = Ticket.new({'film_id' => film3.id, 'customer_id' => customer2.id})
  ticket5 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer3.id})
  ticket6 = Ticket.new({'film_id' => film3.id, 'customer_id' => customer3.id})

  ticket1.save()
  ticket2.save()
  ticket3.save()
  ticket4.save()
  ticket5.save()
  ticket6.save()

binding.pry
nil
