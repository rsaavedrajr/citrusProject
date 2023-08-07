let currentGameIndex = 0;
const gameItems = document.querySelectorAll('.game-item');

function showGame(index) {
    gameItems.forEach(item => item.classList.remove('active'));
    gameItems[index].classList.add('active');
}

function rotateGames() {
    showGame(currentGameIndex);
    currentGameIndex = (currentGameIndex + 1) % gameItems.length;
}

// Initially show the first game
showGame(currentGameIndex);

// Rotate games every 5 seconds
setInterval(rotateGames, 5000);