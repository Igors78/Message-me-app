// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";

Rails.start();
Turbolinks.start();
ActiveStorage.start();
// Loads all Semantic javascripts
//= require jquery
//= require semantic-ui
require("jquery");
import * as bootstrap from "bootstrap";
import "../stylesheets/application";

document.addEventListener("DOMContentLoaded", function (event) {
  var popoverTriggerList = [].slice.call(
    document.querySelectorAll('[data-bs-toggle="popover"]')
  );
  var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
    return new bootstrap.Popover(popoverTriggerEl);
  });

  var tooltipTriggerList = [].slice.call(
    document.querySelectorAll('[data-bs-toggle="tooltip"]')
  );
  var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
    return new bootstrap.Tooltip(tooltipTriggerEl);
  });
});

$(document).on("turbolinks:load", function () {
  scroll_bottom();
  submit_message();
});

function scroll_bottom() {
  $("#messages-content")
    .stop()
    .animate(
      {
        scrollTop: $("#messages-content")[0].scrollHeight,
      },
      800
    );
}

function submit_message() {
  $("#message_body").on("keydown", function (e) {
    if (e.key == Enter) {
      $("button").trigger("click");
    }
  });
}

$(document).on("ajax:beforeSend", function () {
  $("#message_body").val("");
});
