package com.SpringBoot;
import com.Entity.Game;
import com.Service.GameService;


public class GameServiceTestRunner {


    private static GameService gameService;

    public static void main(String[] args) {
        // Test the getGameById method
        Game game = gameService.getGameById(1);
        if (game != null) {
            System.out.println("Game found");
        } else {
            System.out.println("Game not found.");
        }
    }
}

