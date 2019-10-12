package pl.javastart.cookbook;

public enum CategoryName {
    DESSERTS ("Desery"),
    SOUPS ("Zupy"),
    MEAT_DISH ("Dania mięsne"),
    VEGETARIAN ("Dania wegetariańskie");

    private String polishName;

    CategoryName(String polishName) {
        this.polishName = polishName;
    }

    public String getPolishName() {
        return polishName;
    }

    public void setPolishName(String polishName) {
        this.polishName = polishName;
    }
}
