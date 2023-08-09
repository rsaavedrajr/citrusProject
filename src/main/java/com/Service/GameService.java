package com.Service;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Entity.Game;
import com.Repository.GameRepository;

@Service
public class GameService {

    private final GameRepository gameRepository;

    @Autowired
    public GameService(GameRepository givenGameRepo) {
        this.gameRepository = givenGameRepo;
    }

    // Read-only methods

    public Game getGameById(int gameId) {
        return gameRepository.findById(gameId).orElse(null);
    }

    public List<Game> getAllGames() {
        return gameRepository.findAll();
    }

    public List<Game> getGamesByCategories(List<String> categories) {
        return gameRepository.findByGenreIn(categories);
    }

    public List<Game> getGamesByCategory(String category) {
        return gameRepository.findByGenre(category);
    }

    public List<Game> getRandomGamesSubset(List<Game> games, int size) {
        Collections.shuffle(games);
        return games.subList(0, size);
    }

}
