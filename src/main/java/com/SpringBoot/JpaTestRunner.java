package com.SpringBoot;
import com.Entity.Game;
import com.Service.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class JpaTestRunner implements CommandLineRunner {

    private final GameService gameService;

    @Autowired
    public JpaTestRunner(GameService gameService) {
        this.gameService = gameService;
    }

    @Override
    public void run(String... args) {
        // Test JPA functions with print statements
        System.out.println("Running JPA tests...");

        // Find a Game by ID
        Game foundGame = gameService.getGameById(1);
        System.out.println("Found Game by ID: " + foundGame.getTitle());

        // Find all Games
        Iterable<Game> allGames = gameService.getAllGames();
        System.out.println("All Games:");
        allGames.forEach(System.out::println);


        System.out.println("JPA tests completed.");
    }
}
