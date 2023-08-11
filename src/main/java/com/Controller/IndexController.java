package com.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.Service.GameService;
import com.Entity.Game;

/** This controller class manages functionality of the index.html webpage
*/
@Controller
public class IndexController {

    
    /** The service used by this controller to perform operations.
    */
    @Autowired
    private GameService gameService;

    /** Sets the IndexController's GameService to the given GameService object
    *
    * @param gameService GameService object used by this controller
    /* 
    public IndexController(GameService gameService) {
        this.gameService = gameService;
    }

    /** Method to redirect user to the home page when no extension is added
    *
    * @returns String representing a redirect to the index.html page
    */
    @GetMapping("/")
    public String redirectToIndex() {
        return "redirect:/index";
    }

    /** Method used to get the HTTP mapping for the index.html page
    *
    * This method uses a loop to add subsets of Game objects to a List onject that is then used as the Model
    * @param model Model object used to render dynamic content on the home page
    * @returns String representing the index.html page
    */
    @GetMapping("/index")
    public String homePage(Model model) {
        List<Game> games = gameService.getAllGames();
        List<Game> randomGames = gameService.getRandomGamesSubset(games, 159);
        List<List<Game>> gamesModel = new ArrayList<>();
        for (int i = 0; i < 20; i++) {
            List<Game> newRow = gameService.getRandomGamesSubset(randomGames, 3);
            gamesModel.add(new ArrayList<>(newRow));
        }

        for (int i = 0; i < 20; i++) {
        }
        
        model.addAttribute("gamesModel", gamesModel);
        return "index";
    }
}
