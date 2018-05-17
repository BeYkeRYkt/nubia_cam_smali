package p043u.aly;

import java.io.InputStream;
import java.io.OutputStream;

public class du extends cU {
    protected InputStream bBp = null;
    protected OutputStream bBq = null;

    protected du() {
    }

    public du(OutputStream outputStream) {
        this.bBq = outputStream;
    }

    public int bYc(byte[] bArr, int i, int i2) {
        if (this.bBp != null) {
            try {
                int read = this.bBp.read(bArr, i, i2);
                if (read >= 0) {
                    return read;
                }
                throw new dx(4);
            } catch (Throwable e) {
                throw new dx(0, e);
            }
        }
        throw new dx(1, "Cannot read from null inputStream");
    }

    public void bYd(byte[] bArr, int i, int i2) {
        if (this.bBq != null) {
            try {
                this.bBq.write(bArr, i, i2);
                return;
            } catch (Throwable e) {
                throw new dx(0, e);
            }
        }
        throw new dx(1, "Cannot write to null outputStream");
    }
}
