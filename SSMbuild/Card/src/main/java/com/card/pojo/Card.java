package com.card.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Card {
    private int id;
    private String name;
    private int count;
    private double price;
    private String pic;
}
