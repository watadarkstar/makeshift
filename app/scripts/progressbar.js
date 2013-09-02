/ NOTE: Need jquery, jquery UI
// Individual divs for project updates must have ids of #update-(number here) in an descending order (most recent update is id="update-1")
// Individual divs must also store the cumulative progress it represents as an integer in data-progress

// jquery visible - need this for visible() function
(function(d){d.fn.visible=function(e,i){var a=d(this).eq(0),f=a.get(0),c=d(window),g=c.scrollTop();c=g+c.height();var b=a.offset().top,h=b+a.height();a=e===true?h:b;b=e===true?b:h;return!!(i===true?f.offsetWidth*f.offsetHeight:true)&&b<=c&&a>=g}})(jQuery);


// find the top visible element
var topEle;
function findTop (idnum) {
  if ($("#update-" + idnum).visible() == true) {
    topEle = $("#update-" + idnum);
  } else {
    findTop(idnum + 1);
  }
};

// using jquery UI's progress bar
// function that inits progress bar with highest progress value on current browser view
function setProgressBar () {
  // grab progress value for the top update post within browser view
  findTop(1);
  var progressToShow = topEle.data("progress");
  // sets the progress bar
  $( "#progressbar" ).progressbar({
    value: progressToShow
  });
}

// calling setProgressBar on scroll event
function addScrollEvent () {
  $(".mobile-content").scroll(function () {
    setProgressBar();
  });	
}

// execution
$(document).ready(function() {
	setProgressBar;
	addScrollEvent();
})