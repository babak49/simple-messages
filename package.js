Package.describe({
  name: 'babak:simple-messages',
  version: '1.0.0',
  summary: 'Meteor simple flash messages',
  git: 'https://github.com/babak49/simple-messages',
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('0.9.0');

  api.use([
    'templating',
    'jquery',
    'coffeescript'
  ], 'client');

  api.addFiles([
    'client/simple-messages.coffee',
    'client/simple-messages.html'
  ], 'client');
});
