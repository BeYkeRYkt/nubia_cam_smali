.class public Lcom/android/common/effects/a/w;
.super Lcom/android/common/effects/c;
.source "SourceFile"


# instance fields
.field private JA:I

.field private JB:I

.field private JC:I

.field private JD:I

.field private JE:I

.field private final JF:[F

.field private final Jj:[F

.field private Jk:Landroid/content/Context;

.field private Jl:I

.field private Jm:I

.field private Jn:I

.field private Jo:I

.field private Jp:Z

.field private Jq:I

.field private Jr:[I

.field private Js:I

.field private Jt:I

.field private Ju:I

.field private Jv:I

.field private Jw:I

.field private Jx:I

.field private Jy:I

.field private Jz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/android/common/effects/c;-><init>()V

    .line 22
    filled-new-array {v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/w;->Jr:[I

    .line 44
    iput-boolean v1, p0, Lcom/android/common/effects/a/w;->Jp:Z

    .line 46
    iput v1, p0, Lcom/android/common/effects/a/w;->Jn:I

    .line 47
    new-array v0, v2, [F

    fill-array-data v0, :array_4c

    iput-object v0, p0, Lcom/android/common/effects/a/w;->JF:[F

    .line 53
    new-array v0, v2, [F

    fill-array-data v0, :array_70

    iput-object v0, p0, Lcom/android/common/effects/a/w;->Jj:[F

    .line 61
    iput-object p1, p0, Lcom/android/common/effects/a/w;->Jk:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lcom/android/common/effects/a/w;->Ie()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/w;->Jr:[I

    .line 63
    const v0, 0x7f0202ea

    invoke-static {p1, v0}, Lcom/android/common/gles/i;->SG(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/w;->Js:I

    .line 64
    const v0, 0x7f020211

    invoke-static {p1, v0}, Lcom/android/common/gles/i;->SG(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/w;->Jq:I

    .line 65
    const v0, 0x7f020210

    invoke-static {p1, v0}, Lcom/android/common/gles/i;->SG(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/w;->Jl:I

    .line 66
    const v0, 0x7f0201d5

    invoke-static {p1, v0}, Lcom/android/common/gles/i;->SG(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/w;->Jm:I

    .line 60
    return-void

    .line 47
    nop

    :array_4c
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 53
    :array_70
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private Ic([F[FLjava/nio/FloatBuffer;IIIII)V
    .registers 15

    .prologue
    .line 131
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 133
    iget v0, p0, Lcom/android/common/effects/a/w;->Jo:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 136
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 137
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    iget v0, p0, Lcom/android/common/effects/a/w;->Jt:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 141
    const/16 v4, 0x14

    move-object v5, p3

    .line 140
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 142
    iget v0, p0, Lcom/android/common/effects/a/w;->Jt:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 144
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 145
    iget v0, p0, Lcom/android/common/effects/a/w;->Ju:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 146
    const/16 v4, 0x14

    move-object v5, p3

    .line 145
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 147
    iget v0, p0, Lcom/android/common/effects/a/w;->Ju:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 151
    iget v0, p0, Lcom/android/common/effects/a/w;->Jx:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 152
    iget v0, p0, Lcom/android/common/effects/a/w;->JA:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 153
    iget v0, p0, Lcom/android/common/effects/a/w;->JE:I

    int-to-float v1, p6

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 154
    iget v0, p0, Lcom/android/common/effects/a/w;->Jw:I

    int-to-float v1, p7

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 156
    const-wide/16 v2, 0x64

    rem-long/2addr v0, v2

    long-to-float v0, v0

    .line 157
    iget v1, p0, Lcom/android/common/effects/a/w;->JC:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 159
    iget v0, p0, Lcom/android/common/effects/a/w;->Jn:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_ca

    .line 160
    iget v0, p0, Lcom/android/common/effects/a/w;->Jz:I

    iget-object v1, p0, Lcom/android/common/effects/a/w;->JF:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 165
    :goto_77
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 166
    iget v0, p0, Lcom/android/common/effects/a/w;->Js:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 167
    iget v0, p0, Lcom/android/common/effects/a/w;->JD:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 169
    const v0, 0x84c4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 170
    iget v0, p0, Lcom/android/common/effects/a/w;->Jq:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 171
    iget v0, p0, Lcom/android/common/effects/a/w;->JB:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 173
    const v0, 0x84c5

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 174
    iget v0, p0, Lcom/android/common/effects/a/w;->Jl:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 175
    iget v0, p0, Lcom/android/common/effects/a/w;->Jv:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 177
    const v0, 0x84c6

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 178
    iget v0, p0, Lcom/android/common/effects/a/w;->Jm:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 179
    iget v0, p0, Lcom/android/common/effects/a/w;->Jy:I

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 181
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 130
    return-void

    .line 162
    :cond_ca
    iget v0, p0, Lcom/android/common/effects/a/w;->Jz:I

    iget-object v1, p0, Lcom/android/common/effects/a/w;->Jj:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    goto :goto_77
.end method

.method private Id()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    iget-boolean v0, p0, Lcom/android/common/effects/a/w;->Jp:Z

    if-eqz v0, :cond_7

    .line 77
    return-void

    .line 79
    :cond_7
    iput-boolean v2, p0, Lcom/android/common/effects/a/w;->Jp:Z

    .line 80
    iget-object v0, p0, Lcom/android/common/effects/a/w;->Jr:[I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/common/effects/a/w;->Jr:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SF(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/w;->Jo:I

    .line 81
    iget v0, p0, Lcom/android/common/effects/a/w;->Jo:I

    if-nez v0, :cond_24

    .line 82
    const-string/jumbo v0, "OldFilmEffect"

    const-string/jumbo v1, "mProgram = 0"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_24
    iget v0, p0, Lcom/android/common/effects/a/w;->Jo:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/w;->Jt:I

    .line 85
    iget v0, p0, Lcom/android/common/effects/a/w;->Jo:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/w;->Ju:I

    .line 86
    iget v0, p0, Lcom/android/common/effects/a/w;->Jo:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/w;->Jx:I

    .line 87
    iget v0, p0, Lcom/android/common/effects/a/w;->Jo:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/w;->JA:I

    .line 88
    iget v0, p0, Lcom/android/common/effects/a/w;->Jo:I

    const-string/jumbo v1, "uR90Matrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/w;->Jz:I

    .line 89
    iget v0, p0, Lcom/android/common/effects/a/w;->Jo:I

    const-string/jumbo v1, "width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/w;->JE:I

    .line 90
    iget v0, p0, Lcom/android/common/effects/a/w;->Jo:I

    const-string/jumbo v1, "height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/w;->Jw:I

    .line 92
    iget v0, p0, Lcom/android/common/effects/a/w;->Jo:I

    const-string/jumbo v1, "offset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/w;->JC:I

    .line 94
    iget v0, p0, Lcom/android/common/effects/a/w;->Jo:I

    const-string/jumbo v1, "uVignetteTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/w;->JD:I

    .line 95
    iget v0, p0, Lcom/android/common/effects/a/w;->Jo:I

    const-string/jumbo v1, "uScratchesTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/w;->JB:I

    .line 96
    iget v0, p0, Lcom/android/common/effects/a/w;->Jo:I

    const-string/jumbo v1, "uDustTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/w;->Jv:I

    .line 97
    iget v0, p0, Lcom/android/common/effects/a/w;->Jo:I

    const-string/jumbo v1, "uNoiseTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/w;->Jy:I

    .line 75
    return-void
.end method

.method private Ie()[I
    .registers 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/common/effects/a/w;->Jk:Landroid/content/Context;

    const v1, 0x7f090039

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/android/common/effects/a/w;->Jk:Landroid/content/Context;

    const v2, 0x7f09002c

    invoke-static {v1, v2}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SE(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public GK([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/gles/c;Lcom/android/common/gles/e;)V
    .registers 19

    .prologue
    .line 103
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RG()I

    move-result v0

    const v1, 0x8d65

    if-eq v1, v0, :cond_a

    .line 104
    return-void

    .line 106
    :cond_a
    invoke-direct {p0}, Lcom/android/common/effects/a/w;->Id()V

    .line 107
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 108
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RQ()I

    move-result v0

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 109
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RQ()I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/common/effects/a/w;->Ic([F[FLjava/nio/FloatBuffer;IIIII)V

    .line 102
    return-void
.end method

.method public GM()I
    .registers 2

    .prologue
    .line 186
    const v0, 0x8d65

    return v0
.end method

.method public GP()V
    .registers 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/common/effects/a/w;->Id()V

    .line 113
    return-void
.end method

.method public release()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/android/common/effects/a/w;->Jr:[I

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 120
    iget-object v0, p0, Lcom/android/common/effects/a/w;->Jr:[I

    aget v0, v0, v3

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 121
    iget v0, p0, Lcom/android/common/effects/a/w;->Jo:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 122
    new-array v0, v3, [I

    iget v1, p0, Lcom/android/common/effects/a/w;->Js:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 123
    new-array v0, v3, [I

    iget v1, p0, Lcom/android/common/effects/a/w;->Jq:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 124
    new-array v0, v3, [I

    iget v1, p0, Lcom/android/common/effects/a/w;->Jl:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 125
    new-array v0, v3, [I

    iget v1, p0, Lcom/android/common/effects/a/w;->Jm:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 118
    return-void
.end method

.method public vn(IZ)V
    .registers 3

    .prologue
    .line 191
    iput p1, p0, Lcom/android/common/effects/a/w;->Jn:I

    .line 190
    return-void
.end method
