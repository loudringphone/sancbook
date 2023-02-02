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
//= require jquery
//= require_tree .

const fetchUnread = function () {
    $.ajax('/api/unread').done(function (u) {
        if (u === '0') {
            $('#unread').text('Messenger');
        }
        else {
            $('#unread').text('Messenger (' + u + ')');
        }
    });
};
fetchUnread()
setInterval(fetchUnread, 10000);








const createAtag = function(text, link) {
    a = document.createElement('a')
    b = document.createTextNode(text)
    a.appendChild(b)
    a.href = link
    favored.appendChild(a)
    
}

const createSpantag = function(txt) {
    span = document.createElement("span");
    txt = document.createTextNode(txt);
    span.appendChild(txt);
    favored.appendChild(span)
}
                    

const featureWidth = function(){
    isMobile = Math.min(window.screen.width, window.screen.height) < 768 || navigator.userAgent.indexOf("Mobi") > -1;

if(!isMobile) {
    featurePlaceholder = document.querySelector(".featurePlaceholder")
    feature = document.querySelector(".feature")
    if (featurePlaceholder != null) {
        if (feature != null) {
            featurePlaceholder.style.width = parseInt(feature.width)+10 + "px"
        }
        else {
        }
    }
   
}
    
}


