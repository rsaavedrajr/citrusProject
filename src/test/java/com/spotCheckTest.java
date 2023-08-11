package com;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertFalse;

import com.Entity.Game;
import com.Repository.GameRepository;
import com.SpringBoot.DemoApplication;

import java.util.List;

@SpringBootTest(classes = DemoApplication.class)
public class spotCheckTest {
	// pass a genre to GameService and check if a game's name is in the returned
	// list

	// sets up repo
	// @Autowired
	// private TestEntityManager entityManager;

	@Autowired
	GameRepository testrepo;

	// TESTS TO ADD
	// MAKE SURE LIST ISNT EMPTY

	@Test
	public void isGenreReal() {
		List<Game> gameList = testrepo.findByGenre("UNREAL");
		assertThat(gameList).isEmpty();
	}

	@ParameterizedTest(name = "is {0} a genre? = {1}")
	@CsvSource({
			"Fighting, True",
			"Action, True",
			"Strategy, True",
			"Sports, True",
			"Shooter, True",
			"Survival, True",
			"dertg45y6g, False",
	})
	public void doesItDetectGenre(String genre, boolean expected) {
		List<Game> gameList = testrepo.findByGenre(genre);
		assertFalse(!(gameList.isEmpty() == !expected));

	}

	@ParameterizedTest(name = "is {0} in {1} genre? {2}")
	@CsvSource({
			"Rivals of Aether, Fighting, True",
			"DELTARUNE, Action, True",
			"Among Us, Fighting, False",
			"Mario Party Superstars, Party, True",
			"Minecraft, Educational, True",
			"Portal 2, Strategy, False",
	})
	public void isGameInGenre(String name, String genre, Boolean expected) {
		List<Game> gameList = testrepo.findByGenre(genre);

		boolean result = false;

		for (Game game : gameList) {
			if (game.getTitle().equals(name)) {
				result = true;
			}
		}
		System.out.println(name + " " + result);

		assertFalse(!(result == expected));
	}
}