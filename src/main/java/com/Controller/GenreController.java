package com.Controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import java.util.List;
import com.Entity.Game; 
import com.Service.GameService;

/** This controller class manages functionality of the genres.html webpage
*
*/
@Controller
public class GenreController {

    /** The service used by this controller to perform operations.
    */
    private final GameService gameService;

    /** Sets the GenreController's GameService to the given GameService object
    *
    * @param gameService GameService object used by this controller
    */
    public GenreController(GameService gameService) {
        this.gameService = gameService;
    }

    /** Method used to get the HTTP mapping for the home genres.html page
    *
    * @param model Model object used to render dynamic content on the genres page
    * @returns String representing the genres.html page
    */
    @GetMapping("/genres")
    public String genresPage(Model model) {
        model.addAttribute("pageTitle", "All Games");

        List<Game> actionGames = gameService.getGamesByCategory("Action");
        model.addAttribute("actionGames", actionGames);

        List<Game> adventureGames = gameService.getGamesByCategory("Adventure");
        model.addAttribute("adventureGames", adventureGames);

        List<Game> battleroyaleGames = gameService.getGamesByCategory("Battle_Royale");
        model.addAttribute("battleroyaleGames", battleroyaleGames);

        List<Game> fightingGames = gameService.getGamesByCategory("Fighting");
        model.addAttribute("fightingGames", fightingGames);

         List<Game> musicGames = gameService.getGamesByCategory("Music");
        model.addAttribute("musicGames", musicGames);

        List<Game> open_worldGames = gameService.getGamesByCategory("Open_World");
        model.addAttribute("openworldGames", open_worldGames);

        List<Game> partyGames = gameService.getGamesByCategory("Party");
        model.addAttribute("partyGames", partyGames);

        List<Game> puzzleGames = gameService.getGamesByCategory("Puzzle");
        model.addAttribute("puzzleGames", puzzleGames);

        List<Game> racingGames = gameService.getGamesByCategory("Racing");
        model.addAttribute("racingGames", racingGames);

        List<Game> retroGames = gameService.getGamesByCategory("Retro");
        model.addAttribute("retroGames", retroGames);

         List<Game> shooterGames = gameService.getGamesByCategory("Shooter");
        model.addAttribute("shooterGames", shooterGames);

        List<Game> sportsGames = gameService.getGamesByCategory("Sports");
        model.addAttribute("sportsGames", sportsGames);

         List<Game> strategyGames = gameService.getGamesByCategory("Strategy");
        model.addAttribute("strategyGames", strategyGames);

        List<Game> survivalGames = gameService.getGamesByCategory("Survival");
        model.addAttribute("survivalGames", survivalGames);

        List<Game> tacticalGames = gameService.getGamesByCategory("Tactical");
        model.addAttribute("tacticalGames", tacticalGames);

        return "genres"; 
    }
}
