// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

function isSimpan() {
  if (confirm("Simpan data?")) {
    return true
  } else {
    return false
  }
}

function isHapus() {
  if (confirm("Hapus data?")) {
    return true
  } else {
    return false
  }
}

function is_tutup_form_a_gudang() {
  isOk = confirm("Tutup Form !!!") ;
  if (isOk) {
    var urlBack = $("#a_gudang_url_back").val();
    window.location = urlBack ; 
  } 
return false ;    
}

function openSearchBar() {
  $('#searchRow').show();
  $('#searchRow').next().show();
  $('#searchLink').hide();
}