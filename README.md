Simple messages for Meteor.js application
==============
Package for displaying alert messages to the user.

This package integrates well with [Bootstrap Alerts](http://getbootstrap.com/components/#alerts) styles, but Bootstrap is not a dependency.

You can see a [demo](http://simple-messages.meteor.com/) and [source code](https://github.com/babak49/simple-messages).

##Configure
If you want to change default behavior you should create variable with instance of messages function
```javascript
  var Messages = new Messages();
  Messages.options = {
    autoHide     : true,
    hideDelay    : 5000,
    autoScroll   : true,
    isClosable   : true,
    id           : 'simpleMessage'
  }
```

##Usage

Include the template somewhere in your template:
```javascript
  {{> simpleMessage}}
```

Then trigger from javascript. You can send plain text or html
```javascript
  Messages.sendSuccess("Success message");
  Messages.sendWarning("Warning message");
  Messages.sendDanger("Danger message");
  Messages.sendInfo("Info message");
  
  new Messages().sendSuccess('Some success alert'); // With default configurations
```

You also able to send a group of messages sending an array of strings. This will be rendered on a `ul` `li` list:
```javascript
  Messages.sendDanger(["Message 1", "Message 2", "Message 3"]);
```

To clear messages:
```javascript
  Messages.clear();
```
Or
```javascript
  new Messages().clear();
```

####See an example of [simple messages](http://simple-messages.meteor.com/)
