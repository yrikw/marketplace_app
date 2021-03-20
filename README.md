### Message system is still in progress
# T2A2 - Marketplace Project
## Problem
During COVID-19 pandemic, some people started to have their own kitchen gardens and cook at home more often. There are many platforms for cloth or furnitures. However, there is not such a specify platform they can sell their home grown vegetables, furits and homemade food. They can give their friends or neighbors but this marktetplace application will be a new option. They might have thrown out food if they have too many but they don't need to throw out any food anymore. They just need to sign-up to use.

## Why is it a problem that needs solving?
There are Problems for food waste according to [Australian government](https://www.environment.gov.au/protection/waste/food-waste#:~:text=Food%20waste%20is%20also%20a%20major%20problem%20in,five%20per%20cent%20of%20Australia%E2%80%99s%20greenhouse%20gas%20emissions.)<br>
" 1. Each year there is about 7.3 million tonnes of food waste - this is eqauls to 300 kg per person<br>
2. Food waste costs the economy about $20 billions each year<br>
3. Food waste accounts for more than five per cent of Australia’s greenhouse gas emissions "

<br>
As I discussed there is no platform to sell home grown vegetables, so people sometimes throw food away even if the food is not expired or uneatble. 
The food waste is one of the global problem and we need to try not to do it . In this application, they can sell their vegetables or fruits in their local community and they can also make a connection with someone who has same interests. 
The goal of this project is to reduce food waste at home and provodes an opprtunity to sell/buy home grown vegetables and other homemade food.  It will also help accelerate local trade market and revitalises local economy. 

## Links
- [Heroku](https://share-your-garden.herokuapp.com/)
- [Github](https://github.com/yrikw/marketplace_app)

## Installation
This application is tested on Mac only<br>
1. Open terminal on your PC. There are two ways to open. <br>
- Application -> Utilities -> Terminal.app
- command + space -> Open spotlight -> Search terminal.app
2. Run git clone to install this application<br>
``` git clone https://github.com/yrikw/marketplace_app.git```
3. If you don't have homebrew or bundler, go to step 4. If you have them, go to step 8 
4. Install homebrew<br>
```/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"``` <br>
※ If the terminal asks you password, type password for your Mac login.
5. Update to make sure if it is installed properly. <br>
``` brew update ```
6. Install bundler<br>
``` gem install bundler ```
7. Run 'bundle install' to install dependencies<br>
``` bundle install ```
8. Create database and migrate<br>
```rails db:create ```<br>
```rails db:migrate ```<br>
```rails db:seed ```
9. Run 'rails s' to see the server<br>
``` rails s ```
10. In your browser, access to below URL to view this application<br>
``` http://localhost:3000/  ```
11. For stripe, you need to use this command on a different tab in terminal.
``` ultrahook stripe 3000 ```

## Screen Recording
There is a video in docs.

## Description of this application
### Purpose 
The purpose of this app is to provide a platform where people can sell their homemade food and homegrown vegetables or fruits. It allows to buy cheap and fresh vegetables from local area and build local connections.

### Function / Features
#### User 
- Sign up and create a profile to use all functions<br>
Users can see items without sign-up but they need to sign-up to use all functions. 
- Only user who has profile detail can share items<br>
To share items, user needs to fill profile details. 
- Buyer can view a seller's profile, picture and item list<br>
Buyer can see the seller's detail so they can know what kind of person seller is and if they can trust the items/seller. Buyer can buy items without worry. 
- User can have more than one items<br>
User can share items as many as they want and also choose quantity. They can sell from small amount.
- User can update/create profile and location in the same form. 
They can save the data at the same time.

#### Listing
- A search form that user can search items by title, category or/and suburb in listing page<br>
Buyer can search items in search form, then they can find what they want efficiently.
- A top page displays new item list<br>
User can check new items in the top page. If they check the application constantly, they just can see top page.
- User can see a item brief overview in a listing page and then click "See more" to see more details and buy the item. The details include title, price, place and description.<br>
In the listing page, there is title, price and location, then if user is interested in the item, they can click "See more" to read a detail of the item. Also, even if they use smartphone, the design is two colums so they don't have to scroll one by one. 
- Two columns for smartphone
It's easier to search items if the cloumn is two. User doesn't need to scroll  many times.

#### Payment
- This application uses Stripe as a third party<br>
Using Stripe makes the purchasing process smoothly and they can use credit card and it is also tracked. 
- Buyer can check the receipt after purchase<br>
Buyer can check a details of the purchase and also seller's detail to make sure if it is correct.

```
Card number : 4242 4242 4242 4242
Expiry date : 02/24
CVC : 444
```

#### Message system (still in progess)
- User can sent a message each other<br>
User can ask questions or talk each other

#### Admin
- ActiveAdmin is used for admin page ``` http://localhost:3000/admin ```
This application has an administrator page. Administrator has a right to access this page to delete or update data for user and listing.
``` 
e-mail : admin@example.com
password : password
```

### Sitemap
![sitemap](docs/sitemap.png)

### Screenhosts
![Top1](docs/Top1.png)
![Top2](docs/Top2.png)
![Top3](docs/Top3.png)
![Item](docs/Item.png)
![Profile1](docs/Profile1.png)
![Profile2](docs/Profile2.png)
![Create1](docs/Create1.png)
![Create2](docs/Create2.png)
![LogIn](docs/LogIn.png)
![message](docs/message1.png)

### Target audience
- People who has a kitchen garden
- People who likes cooking
- People who want to buy fresh vegetables and fruits from local area
- People who want to build a connection in their local community especially someone who lives alone or new to Melbourne

### Tech stack
- HTML
- CSS
- Bootstrap
- AWS S3 (Image upload)
- Stripe (Payment system)
- Devise (User authentication)
- Heroku (Deployment)
- PostgresQL (Relational database)
- Github
- Javascript (UI/UX design)
- Balsamiq
- Drawio
- Trello
- Unsplash (Free pictures)

## User stories
- [Trello](https://trello.com/b/BFrWUPb8/marketplace-userstory)<br>
![Userstory](docs/user_story.png)

## Wireframe
![wireframe](docs/Marketplace.png)

## Explain the different high-level components (abstractions) in your app
This application is created with Ruby on Rails.　Models, views, and controllers which is called MVC architectures. Models (the part that deals with data) which is saved in app/models, views (the part that produces user-visible results) which is saved in app/views, and controllers (which process user requests and work with models and views) which is saved in app/controllers. How MVC works in this application is requests from users will be received as URLs. The "routes.rb" file is used to analyze the URL received and determine which controller should perform the action. This file enumerates which action to call on which controller. A model is provided for each table in a database. Actions in user requests interact with the database through the model to retrieve data or store a new data. The data retrieved through the model and change it into a variable. The view creates a HTML document using the data passed through the variable. There is a data in column of the table, and user can request to save, show or delete the data in the view. The user requests are like "GET", "POST". For example, "GET" request to URL, user can just type the URL or click the link, then "GET" request will change the URL.

## Detail any third party services that your app will use
- Device<br>
Device is installed to handle user authentication and user account creation. Users can sign-up with their e-mail and password, then they can create a profile detail. In the application, "current_user" is used to share items, purchase items and create a profile. This allows to show the functions only sign-up user can use.

- Amazon S3<br>
Amazon S3 is one of the object storage service that provides data availability, security and performance. In this application, this is used for image upload. It allows user to upload many images and stored them with a strong security. 

- Stripe<br>
Stripe allows to handle payment system. User can purchase items and pay thorugh this service with a credit card. Also, they can check receipt after purchase. The payment is also stored as data in the payment table so if there is something problem, the administer can track it. 


## Describe your projects models in terms of the relationships (active record associations) they have with each other
In this project, there are listing model, category model, measurement model, user model, order model, profile model, location model, message model and coversaton model. In those models, there is definition that how to make relations between different databases and also how the data should be stored. For example, user can have many listing items. Listing item is included category and measurements. When the user wants to delete the item, the data in category and measurement should be deleted too. However if the models don't have relations each other, we have to write a code for each database so to define the relations make code simpler and easier. For user, user can have one profile and location belongs to the profile. If we use "accepts_nested_attributes_for", it allows to save profile data and location data in the same view(form). 

- User
``` 
class User < ApplicationRecord
  has_one :profile
  has_many :listings
end
```
User can have many listings but they can create only one profile.
- Profile
``` 
class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :picture
  has_one :location
  accepts_nested_attributes_for :location
end
```
Profile belongs to user and store user_id with each profile. User can upload one picture for profile page. When they update profile, they can also update "location" in the same form because "accepts_nested_attributes_for" is used. 

- Location
``` 
class Location < ApplicationRecord
  belongs_to :profile
end
```
Location belongs to profile, so user can't update only location.
- Listing

``` 
class Listing < ApplicationRecord
  belongs_to :category
  belongs_to :measurement
  belongs_to :user
  has_one_attached :picture
  has_one :order, dependent: :destroy
end
 ```
 Listing has one category and one measurement. Also, the each data is stored with user_id, so administrator can see who upload the item. 
 - Category
``` 
class Category < ApplicationRecord
    has_many :listings
end
```
Listing has one category and category table can store many listings. It allows to seacrh by category easier.
- Measurement
 ```
class Measurement < ApplicationRecord
    has_many :listings
end
```
Listing has one measurement and measurement table can store many listings.
- Order
```
class Order < ApplicationRecord
  belongs_to :user
  belongs_to :listing
end
```
Order table stores user and listing together, so we can track who bought which items.
- Message
```
class Message < ActiveRecord::Base
    belongs_to :conversation
    belongs_to :user
end
```
Message has sender and recipient so it belongs to conversation. Also, it belongs to user too.
- Conversation
```
class Conversation < ActiveRecord::Base
   belongs_to :sender, :foreign_key => :sender_id, class_name: 'User'
   belongs_to :recipient, :foreign_key => :recipient_id, class_name: 'User'
   has_many :messages, dependent: :destroy
 end
```
In conversation model, it defines sender and recipient which are used user. Conversation cann have many messages. It allows user to have a mailbox to send messages each other.
## Discuss the database relations to be implemented in your application
## ERD
![ERD](docs/ERD.png)
### Listing 
- has one category (required) one to many 
- has one measurement (required) one to many 
- has one order (optional)  one to one or none
- has one user (required) 

### Category
- has many listing (optional) 

### Measurement
- has many listing (optional) 

### User
- has many listing (optional) one to many or none
- has one profile  (optional) one to one or none

### Profile
- has one location (required) one to one
- belongs to  user  (required)

### Location
- belongs to profile (required)

### Order(Payment)
- has one user (required) one to one 
- has one listing  (required) one to one

### Conversation
- belongs to message (required)

### Message
- has one listing (optional)
- has one profile  (optional)

#### In this picture, mandatory = required
![relationships](docs/relations.png)

## Provide your database schema design
- What is schema file?
1. Create database.yml (This file is automatically created when you use ```rails new ```)
2. Run rails db:create (create database based on database.yml)
3. Create a migration file (xxxxxxxxx_create_blogs.rb) which is also created when you use ```scaffold``` or ```rails g model```
4. Run rails db:migration (create and edit table based on migration file)
5. The result of step:4 is reflected in schema.rb
In schema file we can see the structure of tables(data) within a relational database. 

- Which lines in the schema file are used to create 1-many relationships between tables?
Between two tables, there is a relation as we saw ERD. In listings there are three foregin keys which are category, user and measurement.
User, category and measurement can have many listings, so listings uses those tables ID as a foregin_key. 
"Foreign key" allows one column in a table to contain only items from a specific column in a different table.
```
create_table "listings", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.bigint "measurement_id", null: false
    t.bigint "user_id", null: false
  end
 ```

- What are those t.index lines there for?
When retrieving data from a specific column, "t.index" makes easy to duplicate and search the data of a specific column in the table.
Advantages: Data is read and retrieved faster.<br>
Disadvantages: The speed of writing is doubled.<br>
It is fast to read and retrieve data by pasting index and organizing columns so that makes easier to search. However there is a process of duplicating the data of the column, so the speed of writing might be doubled. And even if you use index on a column which doesn't have a lot of data, you can't expect the speed will be faster. Basically index is used for a column that is often searched and the stored values are different in a table which stored a big amount of data.


```
create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "recipient_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "listings", force: :cascade do |t|
    t.string "title"
    t.integer "price"
    t.bigint "category_id", null: false
    t.text "description"
    t.integer "quantity"
    t.bigint "measurement_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.boolean "purchased", default: false
    t.index ["category_id"], name: "index_listings_on_category_id"
    t.index ["measurement_id"], name: "index_listings_on_measurement_id"
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.integer "unit"
    t.integer "streetnumber"
    t.string "streetname"
    t.string "suburb"
    t.integer "postcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_locations_on_profile_id"
  end

  create_table "measurements", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.bigint "conversation_id"
    t.bigint "user_id"
    t.boolean "read", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "listing_id", null: false
    t.string "payment_intent_id"
    t.string "receipt_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["listing_id"], name: "index_orders_on_listing_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "firstname"
    t.string "lastname"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "address"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "listings", "categories"
  add_foreign_key "listings", "measurements"
  add_foreign_key "listings", "users"
  add_foreign_key "locations", "profiles"
  add_foreign_key "orders", "listings"
  add_foreign_key "orders", "users"
  add_foreign_key "profiles", "users"
end
```

## Describe the way tasks are allocated and tracked in your project
- [Trello](https://trello.com/b/ye2jpXz9/marketplace)<br>
This project is tracked via Trello. Each tasks are created as a card in the board. In the card, there is a due day, check lists, priority label, so I cann track which one is high priority and how I can progress. If it is in progress, I moved to "Progress" and once it is done, I moved to "Completed". Screenshots are below:<br>
Also, I used this Github repoditory to update my code. Every steps I pushed the code, so the push history can be tracked and we can check where/how the code and file was changed every time.
![26/2](docs/26:2.png)
![27/2](docs/27:2.png)
![28/2](docs/28:2.png)
![5/3](docs/5:3.png)
![11/3](docs/11:3.png)
![12/3](docs/12:3.png)
![14/3](docs/14:3.png)





