// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

// JavaScript for pop up modals. Used for creating select eventsS
var e =
{
  network : function()
  {
    document.getElementById("networkModal").style.visibility = "visible";

    document.getElementById("workshopModal").style.visibility = "hidden";
    document.getElementById("motivationModal").style.visibility = "hidden";
    document.getElementById("resourceModal").style.visibility = "hidden";
    document.getElementById("howToModal").style.visibility = "hidden";
  }, workshop : function()
  {
    document.getElementById("workshopModal").style.visibility = "visible";

    document.getElementById("networkModal").style.visibility = "hidden";
    document.getElementById("motivationModal").style.visibility = "hidden";
    document.getElementById("resourceModal").style.visibility = "hidden";
    document.getElementById("howToModal").style.visibility = "hidden";
  }, motivation : function()
  {
    document.getElementById("motivationModal").style.visibility = "visible";

    document.getElementById("networkModal").style.visibility = "hidden";
    document.getElementById("workshopModal").style.visibility = "hidden";
    document.getElementById("resourceModal").style.visibility = "hidden";
    document.getElementById("howToModal").style.visibility = "hidden";
  }, resource : function()
  {
    document.getElementById("resourceModal").style.visibility = "visible";

    document.getElementById("workshopModal").style.visibility = "hidden";
    document.getElementById("motivationModal").style.visibility = "hidden";
    document.getElementById("networkModal").style.visibility = "hidden";
    document.getElementById("howToModal").style.visibility = "hidden";
  }, howTo : function()
  {
    document.getElementById("howToModal").style.visibility = "visible";

    document.getElementById("workshopModal").style.visibility = "hidden";
    document.getElementById("motivationModal").style.visibility = "hidden";
    document.getElementById("resourceModal").style.visibility = "hidden";
    document.getElementById("networkModal").style.visibility = "hidden";
  }
};
// End Event button JavaScript
