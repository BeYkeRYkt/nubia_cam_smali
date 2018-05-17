.class public Lcom/android/common/gles/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SD(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/android/common/gles/i;->SJ(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SE(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 5

    .prologue
    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 135
    const v1, 0x8b31

    invoke-static {v1, p0}, Lcom/android/common/gles/i;->SI(ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 136
    const v1, 0x8b30

    invoke-static {v1, p1}, Lcom/android/common/gles/i;->SI(ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 138
    return-object v0
.end method

.method public static SF(II)I
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 142
    if-nez p0, :cond_5

    .line 143
    return v0

    .line 146
    :cond_5
    if-nez p1, :cond_8

    .line 147
    return v0

    .line 150
    :cond_8
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 151
    if-eqz v1, :cond_27

    .line 152
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 153
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 154
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 155
    new-array v2, v4, [I

    .line 156
    const v3, 0x8b82

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 157
    aget v2, v2, v0

    if-eq v2, v4, :cond_27

    .line 158
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 162
    :goto_26
    return v0

    :cond_27
    move v0, v1

    goto :goto_26
.end method

.method public static SG(Landroid/content/Context;I)I
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 26
    new-array v0, v1, [I

    .line 28
    invoke-static {v1, v0, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 30
    aget v1, v0, v5

    if-eqz v1, :cond_3f

    .line 33
    :try_start_b
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 34
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 40
    const/4 v2, 0x0

    aget v2, v0, v2

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 43
    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const/16 v4, 0x2601

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 44
    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const/16 v4, 0x2601

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 47
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 50
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_3f} :catch_4c

    .line 61
    :cond_3f
    aget v1, v0, v5

    if-nez v1, :cond_90

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error loading texture."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :catch_4c
    move-exception v0

    .line 53
    :try_start_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/sdcard/camera_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".hprof"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_6f} :catch_70

    .line 57
    :goto_6f
    throw v0

    .line 54
    :catch_70
    move-exception v1

    .line 55
    const-string/jumbo v2, "TextureHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dump hprof fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    .line 66
    :cond_90
    aget v0, v0, v5

    return v0
.end method

.method public static SH(Landroid/content/Context;II)Ljava/lang/String;
    .registers 7

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 76
    const/16 v1, 0xde1

    if-ne p2, v1, :cond_21

    .line 77
    const-string/jumbo v1, "uniform\\s+samplerExternalOES\\s+sTexture"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 78
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 80
    const-string/jumbo v0, "uniform sampler2D sTexture"

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_20
    :goto_20
    return-object v0

    .line 82
    :cond_21
    const v1, 0x8d65

    if-ne p2, v1, :cond_3f

    .line 83
    const-string/jumbo v1, "uniform\\s+sampler2D\\s+sTexture"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 84
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 86
    const-string/jumbo v0, "uniform samplerExternalOES sTexture"

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 89
    :cond_3f
    const-string/jumbo v1, "TextureHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknow target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method

.method private static SI(ILjava/lang/String;)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 118
    if-eqz v1, :cond_49

    .line 119
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 120
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 121
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 122
    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 123
    aget v2, v2, v0

    if-nez v2, :cond_49

    .line 124
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

    .line 125
    const-string/jumbo v2, "==wq"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 130
    :goto_48
    return v0

    :cond_49
    move v0, v1

    goto :goto_48
.end method

.method private static SJ(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 95
    if-eqz p0, :cond_26

    .line 97
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    .line 98
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 97
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    :goto_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_21} :catch_22
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_21} :catch_3b

    goto :goto_11

    .line 106
    :catch_22
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 112
    :cond_26
    :goto_26
    const-string/jumbo v0, "wq"

    const-string/jumbo v1, "is is null: "

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v0, ""

    return-object v0

    .line 104
    :cond_33
    :try_start_33
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_39
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_33 .. :try_end_39} :catch_22
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_39} :catch_3b

    move-result-object v0

    return-object v0

    .line 108
    :catch_3b
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26
.end method
