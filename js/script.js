const fades = document.querySelectorAll('.fade');

window.addEventListener('scroll', () => {
  fades.forEach(fade => {
    const top = fade.getBoundingClientRect().top;
    if(top < window.innerHeight - 80){
      fade.classList.add('show');
    }
  });
});
