spotter = function() {
  $(".nav-demo li").spotter({
    menuListClass: "active",
    contentList: ".projects-list .invisible-anchor"
  });
}

$(document).ready(spotter);

$('.project-image-container .main-image').click(
  function(event) {
    showModal(event.target.id);
  }
);