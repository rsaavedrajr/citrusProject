package com.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.Service.GameService;
import com.Entity.Game;

@Controller
public class IndexController {

    @Autowired
    private GameService gameService;

    public IndexController(GameService gameService) {
        this.gameService = gameService;
    }

    @GetMapping("/")
    public String redirectToIndex() {
        return "redirect:/index";
    }

    @GetMapping("/index")
    public String homePage(Model model) {
        List<Game> allGames = gameService.getAllGames();
        List<Game> games = gameService.getRandomGamesSubset(allGames, 3);
        model.addAttribute("games", games);
        return "index"; 
    }
}
