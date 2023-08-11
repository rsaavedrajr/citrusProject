package com.Service;

import java.util.Collections;
import java.util.List;

import org.springframework.stereotype.Service;

import com.Entity.Game;
import com.Repository.GameRepository;

/**  This class is used to fetch Game objects from the Jpa Repository
*
*/
@Service
public class GameService {

    
    private final GameRepository gameRepository;

    /** This is the constructor for GameService objects
    *
    * @param givenGameRepo Jpa Repository used by the GameService class to fetch video game data
    */
    public GameService(GameRepository givenGameRepo) {
        this.gameRepository = givenGameRepo;
    }

    /** This method gets a Game that matches the specified ID
    *
    * @param gameId integer representing the Game object's ID
    * @returns Game object with a matching ID
    */
    public Game getGameById(int gameId) {
        return gameRepository.findById(gameId).orElse(null);
    }

    /** This method fetches a List of all Game objects from the GameRepository
    * 
    * @returns List of all Game objects
    */
    public List<Game> getAllGames() {
        return gameRepository.findAll();
    }

    /** This method fetches a List of all Game objects that fall into the specified categories
    *
    * @param categories List of Strings representing the various video game categories
    * @returns List of Game objects within the categories
    */
    public List<Game> getGamesByCategories(List<String> categories) {
        return gameRepository.findByGenreIn(categories);
    }

    /** This method fetches a List of all Game objects that fall into the specified category
    * 
    * @param category String representing video game category
    * @returns List of all Game objects within the specified categoory
    */
    public List<Game> getGamesByCategory(String category) {
        return gameRepository.findByGenre(category);
    }

    /** This method gets a random subset of an arbitrary size from a List of Game objects
    *
    * @param games A List of Game objects
    * @param size integer representing the size of teh subset
    * @returns List of <size> Game objects
    */
    public List<Game> getRandomGamesSubset(List<Game> games, int size) {
        Collections.shuffle(games);
        return games.subList(0, size);
    }

}