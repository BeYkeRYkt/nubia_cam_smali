package com.android.panorama;

final class C1049k {
    private int aUS;

    public void blt(int r1) {
        /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.DecodeException: Load method exception in method: com.android.panorama.k.blt(int):void
	at jadx.core.dex.nodes.MethodNode.load(MethodNode.java:116)
	at jadx.core.dex.nodes.ClassNode.load(ClassNode.java:249)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:59)
	at jadx.core.ProcessClass.process(ProcessClass.java:42)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:306)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:199)
Caused by: jadx.core.utils.exceptions.DecodeException: Unknown instruction: not-int
	at jadx.core.dex.instructions.InsnDecoder.decode(InsnDecoder.java:568)
	at jadx.core.dex.instructions.InsnDecoder.process(InsnDecoder.java:56)
	at jadx.core.dex.nodes.MethodNode.load(MethodNode.java:102)
	... 7 more
*/
        /*
        // Can't load method instructions.
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.panorama.k.blt(int):void");
    }

    private C1049k() {
        this.aUS = 0;
    }

    public void blu(int i) {
        this.aUS |= i;
    }

    public void bls() {
        this.aUS = 0;
    }

    public boolean blv(int i) {
        return (this.aUS & i) != 0;
    }
}
