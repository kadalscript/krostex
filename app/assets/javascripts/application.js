// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require bootstrap-datepicker

function is_tutup() {
  isOk = confirm("Tutup Form !!!") ;
  if (isOk) {
    var urlBack = $("#url_back").val();
    window.location = urlBack ; 
  } 
  return false ;   
}

function openSearchBar() {
  $('#searchRow').show();
  $('#searchRow').next().show();
  $('#searchLink').hide();
}

function isSimpan() {
  isOk = confirm("Simpan data?")
  if (!isOk)
    return false;
}

function isUpdate() {
  if (confirm("Update data?")) {
    return true
  } else {
    return false
  }
}

function closingForm() {
  isOk = confirm("Tutup form") ;
  if (isOk) {
    var urlBack = $("#url_back").val();
    window.location = urlBack ;
  }
  return false ;
}

function closingFormCloseWindow() {
  isOk = confirm("Tutup form") ;
  if (isOk) {
    window.close();
  }
  return false ;
}

function callUrlJS(myUrl) {
  window.open(myUrl) ;
}