package com.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Service.GameService;
import com.Entity.Game;


@Controller
public class SurveyController {

    @Autowired
    private GameService gameService;

    @GetMapping("/survey")
    public String showSurveyPage(Model model) {
       // model.addAttribute("selectedCategories", new ArrayList<>());
        return "survey";
    }

    @PostMapping("/games")
    public String filterGames(@RequestParam("categories") List<String> selectedCategories, Model model) {
        List<Game> filteredGames = gameService.getGamesByCategories(selectedCategories);
        model.addAttribute("games", filteredGames);
        return "games";
    }


}

