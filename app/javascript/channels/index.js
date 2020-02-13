// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.
//= require action_cable
//= require_self
//= require_tree ./channels
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery
 
const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)
