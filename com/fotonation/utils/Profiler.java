package com.fotonation.utils;

import java.util.concurrent.Callable;

public class Profiler {
    public static final int STATE_IDLE = 0;
    public static final int STATE_WORKING = 1;
    private boolean mFirstStartMet = false;
    private long mFirstStartTime;
    private Callable mGetTimeFun;
    private String mName;
    private long mStartTime;
    private int mState = 0;
    private long mTotalRunningTime = 0;

    public Profiler(String str, Callable callable) {
        this.mName = str;
        this.mGetTimeFun = callable;
    }

    private long getCurrentTime() {
        try {
            return ((Long) this.mGetTimeFun.call()).longValue();
        } catch (Exception e) {
            return 0;
        }
    }

    public long getRunningTime() {
        if (this.mState != 1) {
            return this.mTotalRunningTime;
        }
        throw new RuntimeException("Profiler: getRunningTime() - " + this.mName + " still working!");
    }

    public void startTimer() {
        if (this.mState == 1) {
            throw new RuntimeException("Profiler: startTimer() - " + this.mName + " still working!");
        }
        this.mState = 1;
        if (this.mFirstStartMet) {
            this.mStartTime = getCurrentTime();
            return;
        }
        this.mFirstStartMet = true;
        long currentTime = getCurrentTime();
        this.mFirstStartTime = currentTime;
        this.mStartTime = currentTime;
    }

    public void stopTimer() {
        long currentTime = getCurrentTime();
        if (this.mState == 0) {
            throw new RuntimeException("Profiler: stopTimer() - " + this.mName + " was not started!");
        }
        this.mState = 0;
        this.mTotalRunningTime = (currentTime - this.mStartTime) + this.mTotalRunningTime;
    }

    public void resetTimer() {
        if (this.mState == 1) {
            throw new RuntimeException("Profiler: startTimer() - " + this.mName + " still working!");
        }
        this.mTotalRunningTime = 0;
        this.mFirstStartMet = false;
    }

    public long getTimeFromFirstStart() {
        return this.mFirstStartMet ? getCurrentTime() - this.mFirstStartTime : 0;
    }

    public int getState() {
        return this.mState;
    }

    public String getName() {
        return this.mName;
    }
}
