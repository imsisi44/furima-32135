function favorite () {

  const favorite = document.getElementById("favorite-btn")

  favorite.addEventListener('click', function() {
    window.location.reload();
  })
}

window.addEventListener('load', favorite)