function getHeight(likes, max) {
  return (likes * 150)/max;
}

function resize(element, height) {
  element.style.height = height.toString() + 'px';
  element.style.width = 'auto';
}