package com.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Service.GameService;
import com.Entity.Game;

/** This controller class manages functionality of the survey.html webpage
*
*/
@Controller
public class SurveyController {

    /** The service used by this controller to perform operations.
    */
    @Autowired
    private GameService gameService;

    /** Method gets the HTTP mapping of the survey page
    *
    * @param model Model object sent to the browser to render dynamic content
    * @returns String pointing to the survey.html page
    */
    @GetMapping("/survey")
    public String showSurveyPage(Model model) {
        return "survey";
    }

    /** Method posts the HTTP mapping of the games page
    *
    * @param selectedCategories List of Strings representing the categories selected by the user on the survey p
    * @param model Model object sent to the browser to render dynamic content
    * @returns String pointing to the games.html page
    */
    @PostMapping("/games")
    public String filterGames(@RequestParam("categories") List<String> selectedCategories, Model model) {
        model.addAttribute("pageTitle", "Your Games");
        List<Game> filteredGames = gameService.getGamesByCategories(selectedCategories);
        model.addAttribute("games", filteredGames);
        return "games";
    }


}
