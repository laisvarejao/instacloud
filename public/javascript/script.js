function getHeight(popularity, mostPopular) {
  return (popularity * 400)/mostPopular;
}

function resize(element, height) {
  element.style.height = height.toString() + 'px';
  element.style.width = 'auto';
}