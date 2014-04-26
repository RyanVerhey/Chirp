// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require gallery/galleria
//= require gallery/galleria/classic
//= require_tree .
var initGallery = function(){
Galleria.loadAssetTheme('classic');
Galleria.configure({
    imageCrop: true,
    transition: 'fade',
    log: true,
    // better handle image paths in assets folder!
    // if pic can't be loaded use this one as fallback
    dummy: '/assets/photos/dummy.png'});
Galleria.run('#galleria');
};