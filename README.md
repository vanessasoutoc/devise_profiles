# Devise Profiles

This is a sample Devise application that shows how the `User` and `Profile` models can be used together to keep a user's personal data separate from account data.

## Notable files

These files are, in particular, more interesting to study for this app. 

### Models

* User - [app/models/user.rb](https://github.com/farleyknight/devise_profiles/blob/master/app/models/user.rb)

Most of this file is standard, except the `accepts_nested_attributes_for :profile`, which allows the user form to automatically create an accompanying profile.

* Profile - [app/models/profile.rb](https://github.com/farleyknight/devise_profiles/blob/master/app/models/profile.rb)

This model can be fleshed out quite a bit, with loads more attributes than just `first_name`, `last_name` and `location`. Anything and everything Facebook or Twitter usually allows for is possible here.

### Forms

* New registration form - [app/views/devise/registrations/new.html.erb](https://github.com/farleyknight/devise_profiles/blob/master/app/views/devise/registrations/new.html.erb)

Use a nested form to capture both the `User`'s and the `Profile`'s necessary data.

* Edit registration form - [app/views/devise/registrations/edit.html.erb](https://github.com/farleyknight/devise_profiles/blob/master/app/views/devise/registrations/edit.html.erb)

Most of what is in the above form, except that we are also asking for the user's password again before updating.
