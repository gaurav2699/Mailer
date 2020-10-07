Ruby Version: ruby 2.6.1
# Necessary installation steps
- To install Ruby on Rails, go through the following document
- https://docs.google.com/document/d/1jW8vD1ziBLZ-ClZ4tpp7PPxH3obzI3Vk3LCAEBQkzkk/edit?usp=sharing
#### Add the following additional gems to the file Gemfile
- gem 'devise'
- gem 'bulma-rails', '~> 0.6.1'
# Complete steps to run the project
1. First clone the repository to your desired location
2. Go to config/database.yml and change the username and password to your respective MySQL username and password
3. Set up environment variable for GMAIL_USERNAME and GMAIL_PASSWORD in your bash file from which you want to send the mail from.
2. Run the following commands in you teminal:
```
bundle install
rake db:create
rake db:migrate
rails server
```
# List of all implemented features
1. First user in the users table becomes the admin
2. The admin can send mail to users based on his preference
3. The admin can manually select the users he would like to send the mail to
4. The admin can send mail to all the users at the same time
5. The admin can send mail to users based on the location of the user

# List of non-implemented/planned features
- All features implemented

# List of all the known bugs
- No known bugs

# References used
- https://dev.to/morinoko/sending-emails-in-rails-with-action-mailer-and-gmail-35g4
