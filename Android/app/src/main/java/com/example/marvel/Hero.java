package com.example.marvel;

import java.util.Objects;

public class Hero {
    private String name;
    private int img;
    private int color;

    public Hero(String name, int imgDir, int color) {
        this.name = name;
        this.img = imgDir;
        this.color = color;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getImgDir() {
        return img;
    }

    public void setImgDir(int imgDir) {
        this.img = imgDir;
    }

    public int getColor() {
        return color;
    }

    public void setColor(int color) {
        this.color = color;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Hero hero = (Hero) o;
        return Objects.equals(name, hero.name) && Objects.equals(img, hero.img) && Objects.equals(color, hero.color);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name, img, color);
    }
}
