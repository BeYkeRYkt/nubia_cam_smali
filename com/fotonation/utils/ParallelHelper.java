package com.fotonation.utils;

import android.opengl.GLSurfaceView;
import com.p010a.C0090a;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

public class ParallelHelper {
    private static final String TAG = "ParallelHelper";

    public static Object executeAndWait(GLSurfaceView gLSurfaceView, Callable callable) {
        Object futureTask = new FutureTask(callable);
        C0090a.bvo(TAG, "ParallelHelper - executeAndWait() - queueEvent() - before");
        gLSurfaceView.queueEvent(futureTask);
        C0090a.bvo(TAG, "ParallelHelper - executeAndWait() - queueEvent() - after");
        Object obj = null;
        try {
            C0090a.bvo(TAG, "ParallelHelper - executeAndWait() - get() - before");
            obj = futureTask.get();
            C0090a.bvo(TAG, "ParallelHelper - executeAndWait() - get() - after");
            return obj;
        } catch (ExecutionException e) {
            C0090a.bvo(TAG, "executeAndWait() - ExecutionException: " + e.getMessage());
            return obj;
        } catch (InterruptedException e2) {
            C0090a.bvo(TAG, "executeAndWait() - InterruptedException: " + e2.getMessage());
            return obj;
        }
    }
}
