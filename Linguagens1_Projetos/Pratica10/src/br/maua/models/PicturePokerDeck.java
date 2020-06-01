package br.maua.models;

import br.maua.game.PicturePoker;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class PicturePokerDeck {
    private List<PicturePokerCard> decklist;

    public PicturePokerDeck() {
        this.decklist = createNewDeck();
    }

    private List<PicturePokerCard> createNewDeck() {
        List<PicturePokerCard> newDeck = new ArrayList<>();
        for (PicturePokerCardValues value: PicturePokerCardValues.values()) {
            for (int myId = 1; myId <= 5; myId++) {
                newDeck.add(new PicturePokerCard(value,myId));
            }
        }

        return newDeck;
    }

    public List<PicturePokerCard> getDecklist() {
        return decklist;
    }
    public PicturePokerCard getRandomCard(){
        return decklist.remove(new Random().nextInt(decklist.size()));
    }
}
