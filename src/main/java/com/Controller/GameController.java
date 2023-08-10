package com.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import com.Entity.Game; 
import com.Service.GameService;

@Controller
public class GameController {
    private final GameService gameService;

    public GameController(GameService gameService) {
        this.gameService = gameService;
    }

    @GetMapping(path = "/games")
    public String gamesPage(Model model) {
        model.addAttribute("pageTitle", "All Games");
        List<Game> games = gameService.getAllGames();
        List<Game> randomGames = gameService.getRandomGamesSubset(games, 159);
        model.addAttribute("games", randomGames);
        return "games"; 
    }


}
