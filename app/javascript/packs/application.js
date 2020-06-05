// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('jquery')

import "controllers"

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

const application = Application.start()
const context = require.context("../controllers", true, /\.js$/)
application.load(definitionsFromContext(context))

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

$(document).ready(function(event){

  $('#rollDice').click(function(event) {
    var faces = $(".side");

    $(".side").each(function( index ) {
      var items = ["L", "R", "C", "Dot", "Dot", "Dot"];
      let show = items[Math.floor(Math.random() * items.length)];
      faces.eq(index).html(show);
    });
  });

  $('#addPlayerBtn').click(function(event) {

    // Disable Add Player button
    // $(this).prop("disabled", true);
    this.setAttribute("disabled", true);

    // Grab submission from input field
    var playerNameSubmit = $("#playerNameSubmit").val();
    var gameId = $("#gameId").val();

    // Submit player name to database
    $.ajax({
      url: "/players",
      method: "post",
      // headers: {}
      data: {
        name: playerNameSubmit,
        game_id: gameId
      }
    }).done(console.log);

    // Status: 202 created ; 400 already extis ; something error
    // Remove form on submit
    // Part 2: render Ordered List of players without refresh
  });
});
