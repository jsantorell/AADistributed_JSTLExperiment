
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Jeremy Santorelli
 */
public class RandomNumberGenerator {

    private int randomNumber;

    public int getRandomNumber() {

        Random r = new Random(System.nanoTime()); //Seeding a random Number
        int low = 0;
        int high = 11;
        
        this.randomNumber =  r.nextInt(high - low) + low;

        return randomNumber;
    }

}
