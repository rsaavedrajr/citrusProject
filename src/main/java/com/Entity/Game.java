package com.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

/**  This entity class represents a signle video game in the database
*
* These Games are stored in a Jpa Repository named GameRepository
*/
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


    /** Gets the id of a Game object
    *
    * @returns ID of the Game object
    */
    public int getId() {
        return id;
    }

    /** Gets the title of a Game object
    *
    * @returns title of Game object
    */
    public String getTitle() {
        return title;
    }


    /** Gets genre of a Game object
    *
    * @returns genre of Game object
    */
    public String getGenre() {
        return genre;
    }

    /** Gets the console the game object can be played on
    *
    * @returns console of Game object
    */
    public String getConsole() {
        return console;
    }

    /**  Gets the image of a Game object
    *
    * @returns image of Game object
    */
    public String getImage() {
        return image;
    }

   
}
