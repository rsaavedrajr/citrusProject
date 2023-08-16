package com.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;
import com.Entity.Game; 
import com.Service.GameService;

/** This controller class manages functionality of the games.html webpage
*
*/
@Controller
public class GameController {

    /** The service used by this controller to perform operations.
    */
    private final GameService gameService;

    /** Sets the GameController's GameService to the given GameService object
    *
    * @param gameService GameService object used by this controller
    */
    public GameController(GameService gameService) {
        this.gameService = gameService;
    }

    /** Method used to get the HTTP mapping for the home genres.html page
    *
    * This method fetches a List of all games from the GameRepository and then randomly sorts them before adding them as an attribute to the Model
    * @param model Model object used to render dynamic content on the games page
    * @returns String representing the games.html page
    */
    @GetMapping(path = "/games")
    public String gamesPage(Model model) {
        model.addAttribute("pageTitle", "All Games");
        List<Game> games = gameService.getAllGames();
        List<Game> randomGames = gameService.getRandomGamesSubset(games, 159);
        model.addAttribute("games", randomGames);
        return "games"; 
    }



}