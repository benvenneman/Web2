package domain.db;

import domain.model.Product;

import java.util.ArrayList;

public class db {
    private ArrayList<Product> productenarray;
    public db() {
        Product a = new Product("Koekje", 5, 2, 254);
        Product b = new Product("Koekje", 5, 2, 25);
        Product c = new Product("Koekje", 5, 2, 84);

        productenarray = new ArrayList<>();

        productenarray.add(a);
        productenarray.add(b);
        productenarray.add(c);
    }

    public void add(Product product) {productenarray.add(product);}

    public int gettotaal() {
        int totaal = 0;
        for (Product producten : productenarray) {
            totaal += producten.getAantalstock();
        }
        return totaal;
    }

    public ArrayList<Product> getproducten() {
        return productenarray;
    }
}
