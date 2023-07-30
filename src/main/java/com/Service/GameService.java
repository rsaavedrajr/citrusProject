package com.Service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Entity.Game;
import com.Repository.GameRepository;

@Service
public class GameService {

    private final GameRepository gameRepository;

    @Autowired
    public GameService(GameRepository givenGameRepository) {
        this.gameRepository = givenGameRepository;
    }

    // Read-only methods

    public Game getGameById(int gameId) {
        return gameRepository.findById(gameId).orElse(null);
    }

    public List<Game> getAllGames() {
        return gameRepository.findAll();
    }

}