package com.android.common.storagemanager;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import java.util.LinkedList;

final class C0725j extends Handler {
    final /* synthetic */ C0722e afo;

    C0725j(C0722e c0722e) {
        this.afo = c0722e;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                C0718a c0718a = (C0718a) message.obj;
                if (c0718a != null) {
                    if (c0718a.aes == StorageResult$StorageResultType.SUCCESS) {
                        this.afo.aeX.amv(c0718a.aet);
                    }
                    if (c0718a.aeu != null) {
                        c0718a.aeu.QJ(c0718a.aet, c0718a.aes);
                        break;
                    }
                }
                return;
                break;
            case 3:
                Bundle data = message.getData();
                LinkedList linkedList = (LinkedList) message.obj;
                while (!linkedList.isEmpty()) {
                    ((C0236g) linkedList.remove()).amp(data.getLong("capacity"), data.getBoolean("enough"));
                }
                break;
        }
    }
}
