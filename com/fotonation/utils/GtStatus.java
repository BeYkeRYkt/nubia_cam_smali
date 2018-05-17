package com.fotonation.utils;

public class GtStatus {
    public static final int BAD_IMAGE_SIZE = -10;
    public static final int BAD_STRUCT_SIZE = -9;
    public static final int CANCELLED = -2;
    public static final int FAIL = -1;
    public static final int FMT_NOT_SUPPORTED = -7;
    public static final int INVALID_ARG = -4;
    public static final int NOT_IMPLEMENTED = -8;
    public static final int NOT_SUPPORTED = -6;
    public static final int NO_SYSTEM_RESOURCES = -3;
    public static final int OK = 0;

    public static boolean isErrorCode(int i) {
        return i < 0;
    }

    public static String GetDesc(int i) {
        switch (i) {
            case BAD_IMAGE_SIZE /*-10*/:
                return "The size of the input image is not valid";
            case BAD_STRUCT_SIZE /*-9*/:
                return "Invalid structure size";
            case NOT_IMPLEMENTED /*-8*/:
                return "Feature not implemented";
            case NOT_SUPPORTED /*-6*/:
                return "Feature not supported";
            case INVALID_ARG /*-4*/:
                return "Invalid argument";
            case NO_SYSTEM_RESOURCES /*-3*/:
                return "Not enough memory";
            case CANCELLED /*-2*/:
                return "Operation was cancelled";
            case FAIL /*-1*/:
                return "Unspecified error";
            case 0:
                return "No error";
            default:
                return null;
        }
    }
}
