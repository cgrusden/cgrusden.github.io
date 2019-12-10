You want to update 10,000 records. Those records could exist in some other system that you're writing the script for. Imagine running your script and it contacts the other server, gets the list of contacts you want to update, and then starts looping through those contacts and updating some attribute on each one of them. 

Most of the time you'll put some sort of output to show that the script is working and isnt hung up on something. An example would be below:

```ruby
third_party_api.users.find_all(active: true).to_a.each do |user|
  puts "Updating #{user.name}"
  user.active = false
  user.save
end
```

This little script will contact the other server's api using the **third_party_api** library and then it will get the list of users back in some format and then start looping through them. As the script is loopoing through the result set you output the name of the user. At least you'll be seeing the names flyby on the command line and you'll have visual confirmation  that the script is in fact doing it's job. But how many records actually came back and what number are we on? We have no idea:

* How the records are ordered when they have been returned to us
* How many records total there are currently
* How many records do we have left until this script is done?

The best way to satisfy my pet-peeve would be to add some simple counter to this like below:

```ruby
counter = 0
third_party_api.users.find_all(active: true).to_a.each do |user|
  puts "Updating #{user.name} (#{counter+=1})"
  user.active = false
  user.save
end
```
