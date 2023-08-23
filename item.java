package com.luseen.spaceNavigationTestConfig;

import java.io.Serializable;

public class SpaceItem implements Serializable {

    private int id = -1;

    private String itemName;

    private int itemIcon;

    public SpaceItem(String itemName, int itemIcon) {
        this.itemName = itemName;
        this.itemIcon = itemIcon;
    }

    public SpaceItem(int id, int itemIcon) {
        this.id = id;
        this.itemIcon = itemIcon;
    }

    public SpaceItem(int id, String itemName, int itemIcon) {
        this(itemName, itemIcon);
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    String getItemName() {
        return itemName;
    }

    void setItemName(String itemName) {
        this.itemName = itemName;
    }

    int getItemIcon() {
        return itemIcon;
    }

    void setItemIcon(int itemIcon) {
        this.itemIcon = itemIcon;
    }
}