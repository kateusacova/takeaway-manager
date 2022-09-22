## 1. Describe the Problem

> As a customer  
> So that I can check if I want to order something  
> I would like to see a list of dishes with prices.  

> As a customer  
> So that I can order the meal I want  
> I would like to be able to select some number of several available dishes.  

> As a customer  
> So that I can verify that my order is correct  
> I would like to see an itemised receipt with a grand total.  

> As a customer  
> So that I am reassured that my order will be delivered on time  
> I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered.  

## 2. Design the Class System

```

   ┌───────────────────────────────┐
   │Interface                      │
   │                               │
   │interactive_menu               │
   │=> see menu, order, get receipt│
   │                               │
   │ask_user                       │
   └───────────────────────────────┘

   ┌───────────────────────────┐
   │Menu                       │
   │attr_accessor              │
   │initialize(hash  of dishes)│
   │                           │
   │all                        │
   │=> puts dish with price    │
   └───────────────────────────┘

   ┌───────────   
   │ Order     │
   │           │
   │ run       │
   └───────────┘

   ┌─────────────┐
   │ Receipt     │
   │             │
   │ show        │
   └─────────────┘
```

_Also design the interface of each class in more detail._

```ruby
class Interface
  def display
    # => greets user and puts options
  end

  def ask_user
    # => gets selection from user
  end
end

class Menu
  def initialize(dishes) #hash where dishes are keys, and prices are values
  end

  def show
    # => puts each dish with the price
  end
end

class Order
  def run
  # => gets order and phone number from user
  end

  def send_message
  end
end

class Receipt
  def show
    # => show itemized receipt for user
  end
end
```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby

```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby

```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._
