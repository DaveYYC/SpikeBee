// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.


// ******************Searchbar code**********************************************
$(document).ready(function () {
    function Contains(text_one, text_two) {
        if (text_one.indexOf(text_two) != -1)
            return true;
    }
    $("#Searchbar").keyup(function () {
        var searchText = $("#Searchbar").val().toLowerCase();
        $(".Searchbar").each(function () {
            if (!Contains($(this).text().toLowerCase(), searchText)) {
                $(this).hide();
            }
            else {
                $(this).show();
            }
        });
    });
});

//**********Scroll to top code*****************************************************************//
//Get the button:
mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function () { scrollFunction() };

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        mybutton.style.display = "block";
    } else {
        mybutton.style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0; // For Safari
    document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
} 


//*****************comment box and star ratings code:******************************************//
function SubmitComment() {
    if ($("#Rating").val() == "0") {
    alert("Please Rate This Program.");
        return false;
    }
    else {
        return true;
    }
}

function CRate(r) {
    $("#Rating").val(r);
    for (var i = 1; i <= r; i++) {
    $("#Rate" + i).attr('class', 'fas fa-star');
    }
    // unselect remaining
    for (var i = r + 1; i <= 5; i++) {
    $("#Rate" + i).attr('class', 'far fa-star');
    }
}

function CRateOver(r) {
    for (var i = 1; i <= r; i++) {
    $("#Rate" + i).attr('class', 'fas fa-star');
    }
}

function CRateOut(r) {
    for (var i = 1; i <= r; i++) {
    $("#Rate" + i).attr('class', 'far fa-star');
    }
}

function CRateSelected() {
    var setRating = $("#Rating").val();
    for (var i = 1; i <= setRating; i++) {
    $("#Rate" + i).attr('class', 'fas fa-star');
    }
}

////////////////////////////// code for red asterix on mandatory inputs/////////////////////////////////
$(document).ready(function () {
    $("[data-val-required]").each(function () {
        var label = $('label[for="' + $(this).attr("id") + '"]');
        var asterisksHtml = '<span style="color:red">&nbsp;*</span>';
        if (label.text().length > 0 && label.html().indexOf(asterisksHtml) === -1) {
            label.append(asterisksHtml);
        }
    });
});



