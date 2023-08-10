package com;

import org.junit.jupiter.api.Test;
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
	// pass a genre to GameService and check if a game's name is in the returned list

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

	@Test
	public void doesItDetectGenre() {
		List<Game> gameList = testrepo.findByGenre("Fighting");
		assertFalse(gameList.isEmpty());
	}

	// unfinished
	@Test
	public void isGameInGenre() {
		List<Game> gameList = testrepo.findByGenre("Fighting");

		boolean result = false;

		for (Game game : gameList) {
			if (game.getTitle().equals("Rivals of Aether")) {
				result = true;
			}
		}
		System.out.println(result);

		assertFalse(!result);
	}

	// @Test
	// @DisplayName("Is game in genre?")
	// void addsTwoNumbers() {
	// 	GameService test = new GameService(testrepo);
	// 	// assertEquals(2, GameService.getGamesByCategory(""), "1 + 1 should equal 2");
	// }

	// @ParameterizedTest(name = "is {0} in {1} genre? {2}")
	// @CsvSource({
	// 		"Rivals of Aether, Fighting, True",
	// 		"DELTARUNE, Action, True",
	// 		"Among Us, Fighting, False",
	// 		// vv tests that break the code!!
	// })
	// void add(String first, String second, Boolean expectedResult) {
	// 	GameService test = new GameService(testrepo);
	// 	// assertEquals(expectedResult, GameService.add(first, second),
	// 			// () -> first + " is in " + second + "should equal " + expectedResult);
	// }
}