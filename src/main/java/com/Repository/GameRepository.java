package com.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Entity.Game;

/** This class extends JpaRepository to assist in doing CRUD operations on our database
*
*/
@Repository
public interface GameRepository extends JpaRepository<Game, Integer>  {

    /**  This method fethes all Game objects matching the specified genre
    *
    * @param genre String representing a video game genre
    * @returns List of Game objects within the given genre
    */
    List<Game> findByGenre(String genre);

    /**  This method fethes all Game objects that fall within the specified genres
    *
    * @param categories Strings representing the video game categories
    * @returns List of Game objects within the given genres Listed in the parameter List
    */
    List<Game> findByGenreIn(List<String> categories);
    
}