let slideIndex=0;
function showSlides(){ 
  let slides=document.getElementsByClassName("carousel"); 
  for(let i=0;i<slides.length;i++) slides[i].style.display="none"; 
  slideIndex++; 
  if(slideIndex>slides.length) slideIndex=1; 
  if(slides.length>0) slides[slideIndex-1].style.display="block"; 
  setTimeout(showSlides,3000);
}
window.onload=function(){ 
  showSlides(); 
  let boxes=document.getElementsByClassName("box"); 
  for(let b of boxes) b.classList.add("visible");
};
