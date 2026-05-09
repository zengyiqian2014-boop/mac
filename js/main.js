document.addEventListener('DOMContentLoaded', () => {
  document.querySelectorAll('article').forEach((article, index) => {
    article.style.animationDelay = `${index * 0.4}s`;
    article.classList.add('fadeIn');
  });
});
