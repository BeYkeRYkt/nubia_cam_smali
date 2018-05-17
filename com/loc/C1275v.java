package com.loc;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

class C1275v extends ByteArrayOutputStream {
    final /* synthetic */ cg bdM;

    C1275v(cg cgVar, int i) {
        this.bdM = cgVar;
        super(i);
    }

    public String toString() {
        int i = (this.count > 0 && this.buf[this.count - 1] == (byte) 13) ? this.count - 1 : this.count;
        try {
            return new String(this.buf, 0, i, this.bdM.bkB.name());
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }
}
