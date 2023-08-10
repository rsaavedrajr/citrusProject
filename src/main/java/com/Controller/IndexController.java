package com.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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
        List<Game> games = gameService.getAllGames();
        List<Game> randomGames = gameService.getRandomGamesSubset(games, 159);
        List<List<Game>> gamesModel = new ArrayList<>();
        for (int i = 0; i < 20; i++) {
            List<Game> newRow = gameService.getRandomGamesSubset(randomGames, 3);

            System.out.println(newRow.get(0).getTitle());
            System.out.println(newRow.get(1).getTitle());
            System.out.println(newRow.get(2).getTitle());
            gamesModel.add(new ArrayList<>(newRow));
        }

        for (int i = 0; i < 20; i++) {
        }
        
        model.addAttribute("gamesModel", gamesModel);
        return "index";
    }
}
