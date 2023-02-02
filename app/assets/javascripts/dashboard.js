const fetchBrother = function () {
    $.ajax('/api/brother').done(function (name) {
        $('#brother').text(name);
    });
};

setInterval(fetchBrother, 1000);

alert(s)
