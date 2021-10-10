package com.example.marvel;

import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;


public class HeroViewHolder extends RecyclerView.ViewHolder {

    private TextView heroesName;
    private ImageView heroesPicture;

    public HeroViewHolder(@NonNull View itemView) {
        super(itemView);

        heroesName = itemView.findViewById(R.id.tv_heroes_name);
        heroesPicture = itemView.findViewById(R.id.tv_heroes_picture);
    }

    void bind(Hero hero) {
        heroesName.setText(hero.getName());
        heroesPicture.setImageResource(hero.getImgDir());
    }
}
