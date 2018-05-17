package com.android.common.ui;

public enum VideoAnimation$Color {
    WHITE(0),
    RED(1);
    
    int value;

    private VideoAnimation$Color(int i) {
        this.value = i;
    }

    static VideoAnimation$Color mR(int i) {
        switch (i) {
            case 0:
                return WHITE;
            default:
                return RED;
        }
    }
}
