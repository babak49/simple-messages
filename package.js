Package.describe({
  name: 'babak:simple-messages',
  version: '1.0.0',
  summary: 'Meteor simple flash messages',
  git: 'https://github.com/babak49/simple-messages',
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('0.9.0');
  api.addFiles([
      'client/simple-messages.coffee',
      'client/simple-messages.jade'
  ]);

  api.use([
    'templating',
    'handlebars',
    'jquery',
    'coffeescript',
    'mquandalle:jade'
  ], 'client');
});

Package.onTest(function(api) {
  api.use([
      'tinytest',
      'test-helpers'
  ]);
  api.addFiles('tests/simple-messages-tests.js');
});
