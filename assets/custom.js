Reveal.addEventListener('slidechanged', function(event){
    if (event.currentSlide.attributes.getNamedItem('data-state')){
        var currentSlideState = event.currentSlide.attributes.getNamedItem('data-state').nodeValue;
    }

    if (currentSlideState == 'c-slide-blank' || currentSlideState == 'c-slide-video'){
        Reveal.configure({
            controls: false,
            margin: 0
        });
    } else {
        Reveal.configure({
            controls: true,
            margin: 0.05
        });
    }
});