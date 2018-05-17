.class public Lcom/android/common/gles/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private SU:Landroid/opengl/EGLConfig;

.field private SV:Landroid/opengl/EGLContext;

.field private SW:Landroid/opengl/EGLDisplay;

.field private SX:Landroid/opengl/EGLSurface;

.field private SY:Landroid/opengl/EGLSurface;

.field private SZ:Lcom/android/common/gles/EGLManager$State;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/gles/m;->SX:Landroid/opengl/EGLSurface;

    .line 20
    sget-object v0, Lcom/android/common/gles/EGLManager$State;->Td:Lcom/android/common/gles/EGLManager$State;

    iput-object v0, p0, Lcom/android/common/gles/m;->SZ:Lcom/android/common/gles/EGLManager$State;

    .line 31
    invoke-static {}, Lcom/android/common/gles/b;->RL()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/gles/m;->SW:Landroid/opengl/EGLDisplay;

    .line 32
    iget-object v0, p0, Lcom/android/common/gles/m;->SW:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Lcom/android/common/gles/b;->RJ(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/gles/m;->SU:Landroid/opengl/EGLConfig;

    .line 33
    iget-object v0, p0, Lcom/android/common/gles/m;->SW:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/common/gles/m;->SU:Landroid/opengl/EGLConfig;

    invoke-static {v0, v1}, Lcom/android/common/gles/b;->RK(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/gles/m;->SV:Landroid/opengl/EGLContext;

    .line 34
    sget-object v0, Lcom/android/common/gles/EGLManager$State;->Ta:Lcom/android/common/gles/EGLManager$State;

    iput-object v0, p0, Lcom/android/common/gles/m;->SZ:Lcom/android/common/gles/EGLManager$State;

    .line 30
    return-void
.end method


# virtual methods
.method public SQ(Landroid/view/SurfaceHolder;)Landroid/opengl/EGLSurface;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    aput v1, v0, v3

    .line 93
    iget-object v1, p0, Lcom/android/common/gles/m;->SW:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/android/common/gles/m;->SU:Landroid/opengl/EGLConfig;

    invoke-static {v1, v2, p1, v0, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/gles/m;->SY:Landroid/opengl/EGLSurface;

    .line 94
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .line 95
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_34

    .line 96
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fail to get window surface  error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_34
    iget-object v0, p0, Lcom/android/common/gles/m;->SY:Landroid/opengl/EGLSurface;

    return-object v0
.end method

.method public SR()Z
    .registers 5

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/common/gles/m;->SW:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/common/gles/m;->SY:Landroid/opengl/EGLSurface;

    .line 62
    iget-object v2, p0, Lcom/android/common/gles/m;->SY:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/android/common/gles/m;->SV:Landroid/opengl/EGLContext;

    .line 61
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    return v0
.end method

.method public SS()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/common/gles/m;->SW:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/common/gles/m;->SY:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 56
    return-void
.end method

.method public ST()V
    .registers 5

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/common/gles/m;->SW:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 67
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 66
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 65
    return-void
.end method

.method public release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 38
    iget-object v0, p0, Lcom/android/common/gles/m;->SZ:Lcom/android/common/gles/EGLManager$State;

    invoke-virtual {v0}, Lcom/android/common/gles/EGLManager$State;->ordinal()I

    move-result v0

    sget-object v1, Lcom/android/common/gles/EGLManager$State;->Td:Lcom/android/common/gles/EGLManager$State;

    invoke-virtual {v1}, Lcom/android/common/gles/EGLManager$State;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_33

    .line 39
    iget-object v0, p0, Lcom/android/common/gles/m;->SW:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/common/gles/m;->SV:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 40
    iput-object v2, p0, Lcom/android/common/gles/m;->SV:Landroid/opengl/EGLContext;

    .line 41
    iget-object v0, p0, Lcom/android/common/gles/m;->SW:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/common/gles/m;->SY:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 42
    iput-object v2, p0, Lcom/android/common/gles/m;->SY:Landroid/opengl/EGLSurface;

    .line 43
    iget-object v0, p0, Lcom/android/common/gles/m;->SX:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_2e

    .line 44
    iget-object v0, p0, Lcom/android/common/gles/m;->SW:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/common/gles/m;->SX:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 45
    iput-object v2, p0, Lcom/android/common/gles/m;->SX:Landroid/opengl/EGLSurface;

    .line 47
    :cond_2e
    iget-object v0, p0, Lcom/android/common/gles/m;->SW:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 50
    :cond_33
    iput-object v2, p0, Lcom/android/common/gles/m;->SW:Landroid/opengl/EGLDisplay;

    .line 51
    iput-object v2, p0, Lcom/android/common/gles/m;->SU:Landroid/opengl/EGLConfig;

    .line 53
    sget-object v0, Lcom/android/common/gles/EGLManager$State;->Td:Lcom/android/common/gles/EGLManager$State;

    iput-object v0, p0, Lcom/android/common/gles/m;->SZ:Lcom/android/common/gles/EGLManager$State;

    .line 37
    return-void
.end method
