.class public Lcom/android/common/gles/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SO(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 37
    const v1, 0x8b31

    invoke-static {v1, p0}, Lcom/android/common/gles/l;->SP(ILjava/lang/String;)I

    move-result v2

    .line 38
    if-nez v2, :cond_c

    .line 39
    return v0

    .line 41
    :cond_c
    const v1, 0x8b30

    invoke-static {v1, p1}, Lcom/android/common/gles/l;->SP(ILjava/lang/String;)I

    move-result v3

    .line 42
    if-nez v3, :cond_16

    .line 43
    return v0

    .line 46
    :cond_16
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 47
    if-eqz v1, :cond_48

    .line 48
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 49
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 50
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 51
    new-array v2, v4, [I

    .line 52
    const v3, 0x8b82

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 53
    aget v2, v2, v0

    if-eq v2, v4, :cond_48

    .line 54
    const-string/jumbo v2, "==wq"

    const-string/jumbo v3, "Could not link program: "

    invoke-static {v2, v3}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v2, "==wq"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 60
    :goto_47
    return v0

    :cond_48
    move v0, v1

    goto :goto_47
.end method

.method public static SP(ILjava/lang/String;)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 21
    if-eqz v1, :cond_49

    .line 22
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 23
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 24
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 25
    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 26
    aget v2, v2, v0

    if-nez v2, :cond_49

    .line 27
    const-string/jumbo v2, "==wq"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string/jumbo v2, "==wq"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 33
    :goto_48
    return v0

    :cond_49
    move v0, v1

    goto :goto_48
.end method
