function showModal(id){
  var modal = document.getElementById('myModal');

  // Get the image and insert it inside the modal - use its "alt" text as a caption
  var img = document.getElementById(id);
  var modalImg = document.getElementById("modal-for-project");
  var captionText = document.getElementById("caption");
    modal.style.display = "block";
    modalImg.src = img.src;
    captionText.innerHTML = img.alt;
}

function closeModal(){
  var modal = document.getElementById('myModal');
  modal.style.display = "none";
}