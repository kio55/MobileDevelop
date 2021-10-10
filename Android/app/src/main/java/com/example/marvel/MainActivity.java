package com.example.marvel;

import android.annotation.SuppressLint;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.support.annotation.NonNull;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.LinearSnapHelper;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.SnapHelper;
import android.widget.ImageView;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

    private RecyclerView heroesList;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        heroesList = findViewById(R.id.rv_heroes);
        ImageView background = findViewById(R.id.background_color);

        LinearLayoutManager layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        heroesList.setLayoutManager(layoutManager);

        heroesList.setHasFixedSize(true);

        ArrayList<Hero> heroes = new ArrayList<>();
        heroes.add(new Hero("Thanos", R.drawable.thanos, Color.BLUE));
        heroes.add(new Hero("Spider Man", R.drawable.spider_man, Color.RED));
        heroes.add(new Hero("Deadpool", R.drawable.deadpool, Color.GREEN));
        heroes.add(new Hero("Doctor Strange", R.drawable.doctor, Color.WHITE));

        HeroesAdapter heroesAdapter = new HeroesAdapter(heroes);
        SnapHelper helper = new LinearSnapHelper();
        helper.attachToRecyclerView(heroesList);

        heroesList.setAdapter(heroesAdapter);

        heroesList.addOnScrollListener(new RecyclerView.OnScrollListener() {
            @Override
            public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
                super.onScrollStateChanged(recyclerView, newState);
            }

            @Override
            public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
                if (dx > 0) {
                    background.getBackground().getCurrent().setColorFilter(heroes.get(layoutManager.findLastVisibleItemPosition() - 1).getColor(), PorterDuff.Mode.DARKEN);
                } else if (dx < 0) {
                    background.getBackground().getCurrent().setColorFilter(heroes.get(layoutManager.findFirstVisibleItemPosition() + 1).getColor(), PorterDuff.Mode.DARKEN);
                } else {
                    background.getBackground().getCurrent().setColorFilter(heroes.get(0).getColor(), PorterDuff.Mode.DARKEN);
                }
            }
        });
    }
}