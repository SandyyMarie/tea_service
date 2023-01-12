# Tea Subscription Service

A Rails API for a Tea Subscription Service based on [this project](https://mod4.turing.edu/projects/take_home/take_home_be)

## Table of Contents

1. [Architecture and Design](#architecture-and-design)
2. [Subscription End Points](#subscription-end-points)
  - [Return all of a Customers Subscriptions](#view-all-of-a-given-customers-subscriptions)
  - [Create Subscription](#create-subscription)
  - [Update Subscription](#update-subscription)
3. [Local Setup](#local-setup)
4. [Versions](#versions)
5. [Developer](#developer)


## Architecture and Design

<p align="center">
  <img src="https://github.com/SandyyMarie/tea_service/blob/main/tea_service_db.png?raw=true" />
</p>

## Subscription End Points:

### View all of a given Customers Subscriptions
Returns all of the subscriptions of a given Customer.

`GET  /customers/:customer_id/subscriptions` 

<b>Example Input:</b>

`GET http://localhost:3000/customers/1/subscriptions`

<b>Example Output:</b>

```json
{
    "data": [
        {
            "id": "1",
            "type": "subscription",
            "attributes": {
                "title": "Tea Subscription # 58",
                "price": 6.27,
                "status": false,
                "frequency": 16,
                "tea_id": 3,
                "customer_id": 1
            }
        }
    ]
}
```

### Create Subscription
Creates a Subscription with a customer and a specific tea

`POST /subscriptions` 

<b>Example Input:</b>

`POST http://localhost:3000/subscriptions?title=Tea Subscription %23111&price=13.99&status=true&frequency=7&tea_id=1&customer_id=2`

<b>Example Output:</b>

```json
{
    "data": {
        "id": "6",
        "type": "subscription",
        "attributes": {
            "title": "Tea Subscription #111",
            "price": 13.99,
            "status": true,
            "frequency": 7,
            "tea_id": 1,
            "customer_id": 2
        }
    }
}
```

### Update Subscription
Lets you update a subscription, specifically if the status is true or false (active or inactive)

`PATCH  /subscriptions/:subscription_id` 

<b>Example Input:</b>

`PATCH http://localhost:3000/subscriptions/6?status=false`

<b>Example Output:</b>

```json
{
    "data": {
        "id": "6",
        "type": "subscription",
        "attributes": {
            "title": "Tea Subscription #111",
            "price": 13.99,
            "status": false,
            "frequency": 7,
            "tea_id": 1,
            "customer_id": 2
        }
    }
}
```
##
## Local Setup

* Fork this repository
* Clone your fork
* From the command line, install gems and set up your DB:
    * `bundle`
    * `rails db:create`
* Run the test suite with `bundle exec rspec`.
* Run your development server with `rails s` to see the app in action.

## Versions

- Ruby 2.7.4

- Rails 5.2.8

## Developer

<img src="https://avatars.githubusercontent.com/u/59062958?s=120&v=4" />

Sandy M Griffin | [Github](https://github.com/SandyyMarie) | [LinkedIn](https://www.linkedin.com/in/sandy-marie/) |

##

[Back To Top](#tea-subscription-service) 


