## Coffee App

Coffee rating application, submit a brand and bean and rate it! Runs on Rails 4.0.4

### Getting Started

To get the application running on your local machine, run the following commands below:

`bundle`

`rake db:create`

`rake db:migrate`

`rake db:seed`

`rails s`

### Screenshot

![Landing Page](https://raw.githubusercontent.com/Carpk/coffee_app/master/app/assets/images/Screenshot%20from%202014-04-13%2009:31:55.png)
Landing page, you can choose the brand you want to rate or create a new one.

![Brand Page](https://raw.githubusercontent.com/Carpk/coffee_app/master/app/assets/images/Screenshot%20from%202014-04-09%2016:40:35.png)
This is the coffee brand page, you can select the brand's bean for listing of reviews. Or create a new bean if yours in not on the list.

![Reviews Page](https://raw.githubusercontent.com/Carpk/coffee_app/master/app/assets/images/Screenshot%20from%202014-04-09%2016:40:41.png)
The bean reviews page, displays a list of all the reviews for this particular bean from the aforementioned brand. Or allows for a review to be submitted.

### Conclusion

Starting this project, I never wanted there to be a user sign up. But after seeing all the data, and how some submissions should allow the creator to be able delete them, I will have to have a user sign up. But I will also use twitter Oath, which might prompt for a tweet given a rating of 5 on a particular bean review.