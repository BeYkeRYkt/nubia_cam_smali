package com.umeng.analytics;

import java.util.Locale;
import p043u.aly.ay;

public enum Gender {
    Male(1) {
        public String toString() {
            return String.format(Locale.US, "Male:%d", new Object[]{Integer.valueOf(this.value)});
        }
    },
    Female(2) {
        public String toString() {
            return String.format(Locale.US, "Female:%d", new Object[]{Integer.valueOf(this.value)});
        }
    },
    Unknown(0) {
        public String toString() {
            return String.format(Locale.US, "Unknown:%d", new Object[]{Integer.valueOf(this.value)});
        }
    };
    
    public int value;

    /* synthetic */ class C12834 {
        static final /* synthetic */ int[] f518a = null;

        static {
            f518a = new int[Gender.values().length];
            try {
                f518a[Gender.Male.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f518a[Gender.Female.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f518a[Gender.Unknown.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    private Gender(int i) {
        this.value = i;
    }

    public int value() {
        return this.value;
    }

    public static Gender getGender(int i) {
        switch (i) {
            case 1:
                return Male;
            case 2:
                return Female;
            default:
                return Unknown;
        }
    }

    public static ay transGender(Gender gender) {
        switch (C12834.f518a[gender.ordinal()]) {
            case 1:
                return ay.MALE;
            case 2:
                return ay.FEMALE;
            default:
                return ay.UNKNOWN;
        }
    }
}
