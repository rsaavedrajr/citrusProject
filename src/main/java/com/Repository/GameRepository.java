package com.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Entity.Game;

@Repository
public interface GameRepository extends JpaRepository<Game, Integer>  {
    
    List<Game> findByGenre(String genre);
    
}