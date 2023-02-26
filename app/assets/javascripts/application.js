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
        if (parseInt(u) === 0) {
            $('#unread').text('Messenger');
        }
        else if (parseInt(u) > 0) {
            $('#unread').text('Messenger (' + u + ')');
            const currentUsername = gon.current_username;
            const currentUserId = gon.current_userId;
            if ((window.location.pathname === `/users/${currentUsername}/messenger` || 
            window.location.pathname === `/users/${currentUserId}/messenger`)) {
                    // setTimeout(() => {  
                    //     location.reload()
                    // }, 10000);
                    $( "#messages").load( `/users/${currentUserId}/messenger #messages` );
            }
        }
    });
};
fetchUnread()
setInterval(fetchUnread, 10000);



const fetchMessages = function() {
    const pathRegex = /^\/users\/.+\/messages$/;
    const pathMatch = window.location.pathname.match(pathRegex);
    if (pathMatch) {
        const user = String(pathMatch).split('/')[2]
        $.ajax(`/api/${user}/messages`).done(function (messages) {
            if (!messages[0]["read"]) {
                $( "#messageArea" ).load( `/users/${user}/messages #messageArea` ); 
            }
        })
      }
}
fetchMessages()
setInterval(fetchMessages, 1000);





















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
                    

// const featureWidth = function(){
//     featurePlaceholder = document.querySelector(".featurePlaceholder")
//     feature = document.querySelector(".feature")
//     if (featurePlaceholder != null) {
//         if (feature != null) {
//             featurePlaceholder.style.width = parseInt(feature.width)+10 + "px"
//             featurePlaceholder.style.height = parseInt(feature.height)+10 + "px"
//         }
//     }
// }


