## Potluck API Code Challenge

### Summary

Welcome to the UL Potluck API code challenge! One persistent problem we
have as a team is deciding what everyone should bring to a [potluck](https://en.wikipedia.org/wiki/Potluck).  [Dave](https://github.com/luminous14?tab=repositories) always insists on bringing
green jello... [Stephanie](https://github.com/stephmarx) brings nothing but napkins...
It's chaos!  

Well, we've had enough.  This time we're going to do it right and organize this
potluck from the beginning.  In this challenge, you'll need to GET and POST to
our Potluck API to create a user for yourself, see what everyone else is
bringing, and then add an item of your choice to the list.  So, what are you
bringing to the potluck?

You may complete this challenge by whatever means necessary (code, browser, CLI, etc.)

If you get stuck and/or have any questions, feel free to shoot an email to
ian.agne@ul.com.

### Release 0

The first task is to POST to
https://potluck-api.herokuapp.com/users to create a user.

Example data to POST:
```
{
  user: {
    email: <%= insert email here %>
  }
}
```

If the POST is successful, you will receive a json response with the user you
just created.  Keep track of the user_id and the api_key.  You'll need those
later.

### Release 1

The next step is to send a GET request to https://potluck-api.herokuapp.com/items
with your api_key in the query string to get a list of all items that people are
bringing to the potluck.

### Release 2

Come up with a great item to add to the list, and then POST to https://potluck-api.herokuapp.com/items

Example data to POST:
```
{
  api_key: <%= insert api key here %>,
  item: {
    name: <%= insert item here %>
  }
}
```

Then, GET https://potluck-api.herokuapp.com/items with your api_key
again to make sure the item was added to the list (look for the item with your
  user_id ).
