// if I'm in a repo
var slashcount = window.location.href.split("/").length;
if(slashcount >= 5) { // we are in a repo

  // find a top level LICENSE* file
  var license_files = ["LICENSE", "COPYING"];
  var licenseurl = false;
  license_files.forEach(function(license_file) {
    licenseurl = $('a[href*="' + license_file + '"]').attr("href");
  });
  licenseurl && $.get(licenseurl, null, function(data, status, result) {
    if(data.match(/gpl/i)) { // grep it for *GPL*
      
      // paint red tape
      $("body").prepend($("<h2>Watch out, this repository contains GPL licensed code!</h2>")
        .css({
          "position": "fixed",
          "width": "100%",
          "z-index": 1000,
          "opacity": 0.7
        }).fadeIn("slow"));
    }
  });
}
