package com.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;
import com.Entity.Game; 
import com.Service.GameService;

@Controller
public class GameController {
    private final GameService gameService;

    @Autowired
    public GameController(GameService gameService) {
        this.gameService = gameService;
    }

    @GetMapping(path = "/games")
    public String gamesPage(Model model) {
        List<Game> games = gameService.getAllGames();
        model.addAttribute("games", games);
        return "games"; // The name of your games.html template
    }
}