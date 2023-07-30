package com.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Game {
    @Column(name="Title")
    private String title;

    @Column(name="Genres")
    private String genre;

    @Column(name="Price")
    private String price;

    @Column(name="Console")
    private String console;

    @Id
    @Column(name="id", nullable = false, unique = true)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name="image_url")
    private String image;


    // Getters
    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }


    public String getGenre() {
        return genre;
    }


    public String getConsole() {
        return console;
    }

    public String getImage() {
        return image;
    }

   
}