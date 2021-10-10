package com.example.marvel;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;


import java.util.ArrayList;

public class HeroesAdapter extends RecyclerView.Adapter<HeroViewHolder> {

    private final int numberItems;
    private final ArrayList<Hero> heroesNames;

    public HeroesAdapter(ArrayList<Hero> heroesNames) {
        this.heroesNames = heroesNames;
        numberItems = heroesNames.size();
    }



    @NonNull
    @Override
    public HeroViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        Context context = parent.getContext();
        int layoutId = R.layout.hero_list_item;

        LayoutInflater inflater = LayoutInflater.from(context);

        View view = inflater.inflate(layoutId, parent, false);

        HeroViewHolder viewHolder = new HeroViewHolder(view);

        return viewHolder;
    }

    @Override
    public void onBindViewHolder(@NonNull HeroViewHolder holder, int position) {
        holder.bind(heroesNames.get(position));
    }

    @Override
    public int getItemCount() {
        return numberItems;
    }
}
