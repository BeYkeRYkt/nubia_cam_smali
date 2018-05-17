.class public Lcom/android/common/gles/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RI(Landroid/opengl/EGLDisplay;)V
    .registers 4

    .prologue
    .line 14
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq p0, v0, :cond_c

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_15

    .line 15
    :cond_c
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "no display"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_15
    const-string/jumbo v0, "info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "eglGetDisplay success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/opengl/EGLDisplay;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static RJ(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 23
    new-array v3, v5, [Landroid/opengl/EGLConfig;

    .line 24
    const/16 v0, 0xd

    new-array v1, v0, [I

    fill-array-data v1, :array_2c

    .line 35
    new-array v6, v5, [I

    aput v2, v6, v2

    move-object v0, p0

    move v4, v2

    move v7, v2

    .line 36
    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 38
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    if-eqz v0, :cond_1f

    aget v0, v6, v2

    if-nez v0, :cond_28

    .line 39
    :cond_1f
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "get display config failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_28
    aget-object v0, v3, v2

    return-object v0

    .line 24
    nop

    :array_2c
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data
.end method

.method public static RK(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;
    .registers 6

    .prologue
    .line 76
    const/16 v0, 0x3098

    const/4 v1, 0x2

    const/16 v2, 0x3038

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    .line 77
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    .line 78
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    .line 79
    const/16 v2, 0x3000

    if-eq v1, v2, :cond_32

    .line 80
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fail to get EGLContext error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_32
    return-object v0
.end method

.method public static RL()Landroid/opengl/EGLDisplay;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-static {v3}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/android/common/gles/b;->RI(Landroid/opengl/EGLDisplay;)V

    .line 89
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 90
    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v1, v2}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 91
    return-object v0
.end method
