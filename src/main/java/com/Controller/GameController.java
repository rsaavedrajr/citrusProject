package com.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Collections;
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
    @PostMapping("/games")
    public String gamesPage(Model model) {
        List<Game> games = gameService.getAllGames();
        model.addAttribute("games", games);
        return "games"; 
    }


    private List<Game> getRandomGamesSubset(List<Game> games) {
        if (games.size() <= 3){
            return games;
        } else {
            Collections.shuffle(games);
            return games.subList(0, 3);
        }
    }
    
}
