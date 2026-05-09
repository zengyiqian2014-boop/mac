document.addEventListener('DOMContentLoaded', () => {
  document.querySelectorAll('article').forEach((article, index) => {
    article.style.animationDelay = `${index * 0.3}s`;
    article.classList.add('fadeIn');
  });
});
