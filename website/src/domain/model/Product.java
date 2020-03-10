package domain.model;

public class Product {
    private String naam;
    private int prijsstuk;
    private int prijsdoos;
    private int aantalstock;

    public Product(String naam, int prijsstuk, int prijsdoos, int aantalstock) {
        setNaam(naam);
        setPrijsstuk(prijsstuk);
        setPrijsdoos(prijsdoos);
        setAantalstock(aantalstock);
    }

    public static boolean isValidString(String input) {
        return (input != null) && !(input.trim().isEmpty());
    }

    public void setNaam(String naam) {
        if (isValidString(naam)) {
            this.naam = naam;
        } else {
            throw new IllegalArgumentException("Naam is niet valide.");
        }
    }

    public void setPrijsstuk(int prijsstuk) {
        if (prijsstuk > 0) {
            this.prijsstuk = prijsstuk;
        } else {
            throw new IllegalArgumentException("Prijs per stuk is niet correct");
        }
    }

    public void setPrijsdoos(int prijsdoos) {
        if (prijsstuk > 0) {
            this.prijsdoos = prijsdoos;
        } else {
            throw new IllegalArgumentException("Prijs per doos is niet correct");
        }
    }

    public void setAantalstock(int aantalstock) {
        if (aantalstock > 0) {
            this.aantalstock = aantalstock;
        } else {
            throw new IllegalArgumentException("Aantal stock is niet correct");
        }
    }

    public String getNaam() {
        return this.naam;
    }

    public int getPrijsstuk() {
        return this.prijsstuk;
    }

    public int getPrijsdoos() {
        return this.prijsdoos;
    }

    public int getAantalstock() {
        return this.aantalstock;
    }
}
