var initGallery = function(){
Galleria.loadAssetTheme('classic');
Galleria.configure({
    imageCrop: true,
    transition: 'fade',
    log: true,
    // better handle image paths in assets folder!
    // if pic can't be loaded use this one as fallback
    dummy: 'app/assets/images/bg1.jpg'});
Galleria.run('#galleria');
};