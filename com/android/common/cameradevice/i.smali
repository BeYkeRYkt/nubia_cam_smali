.class Lcom/android/common/cameradevice/i;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic Nj:Lcom/android/common/cameradevice/h;


# direct methods
.method constructor <init>(Lcom/android/common/cameradevice/h;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    .line 123
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 122
    return-void
.end method

.method private Kw(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 317
    if-ltz p1, :cond_8

    const/16 v1, 0xc8

    if-ge p1, v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private Kx(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_18

    .line 309
    const-string/jumbo v1, "CameraManager"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_18

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 306
    :cond_18
    :goto_18
    return-void

    .line 311
    :cond_19
    const-string/jumbo v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v0, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    if-nez v0, :cond_22

    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/android/common/cameradevice/i;->Kw(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 130
    const-string/jumbo v0, "CameraManager"

    const-string/jumbo v1, "Camera has released. Sync message just open signal"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Ke()V

    .line 133
    :cond_21
    return-void

    .line 136
    :cond_22
    :try_start_22
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_24} :catch_51

    sparse-switch v0, :sswitch_data_252

    .line 301
    :goto_27
    :sswitch_27
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/android/common/cameradevice/i;->Kw(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 302
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Ke()V

    .line 127
    :cond_38
    return-void

    .line 138
    :sswitch_39
    :try_start_39
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v0, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    invoke-interface {v0}, Lcom/android/common/cameradevice/e;->release()V

    .line 139
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    .line 140
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/common/cameradevice/h;->Kt(Lcom/android/common/cameradevice/h;Lcom/android/common/cameradevice/j;)Lcom/android/common/cameradevice/j;

    .line 141
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/common/cameradevice/h;->Ng:Lcom/android/common/cameradevice/p;
    :try_end_50
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_50} :catch_51

    goto :goto_27

    .line 286
    :catch_51
    move-exception v0

    .line 287
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6d

    iget-object v1, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v1, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    if-eqz v1, :cond_6d

    .line 289
    :try_start_5d
    iget-object v1, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v1, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    invoke-interface {v1}, Lcom/android/common/cameradevice/e;->release()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_64} :catch_246

    .line 293
    :goto_64
    iget-object v1, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iput-object v4, v1, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    .line 294
    iget-object v1, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    invoke-static {v1, v4}, Lcom/android/common/cameradevice/h;->Kt(Lcom/android/common/cameradevice/h;Lcom/android/common/cameradevice/j;)Lcom/android/common/cameradevice/j;

    .line 297
    :cond_6d
    invoke-direct {p0, p1}, Lcom/android/common/cameradevice/i;->Kx(Landroid/os/Message;)V

    .line 299
    throw v0

    .line 145
    :sswitch_71
    :try_start_71
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/common/cameradevice/h;->Ku(Lcom/android/common/cameradevice/h;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_77
    .catch Ljava/lang/RuntimeException; {:try_start_71 .. :try_end_77} :catch_51

    .line 147
    :try_start_77
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v0, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    invoke-interface {v0}, Lcom/android/common/cameradevice/e;->Js()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7e} :catch_7f
    .catch Ljava/lang/RuntimeException; {:try_start_77 .. :try_end_7e} :catch_51

    goto :goto_27

    .line 148
    :catch_7f
    move-exception v0

    .line 149
    :try_start_80
    iget-object v1, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    invoke-static {v1, v0}, Lcom/android/common/cameradevice/h;->Ku(Lcom/android/common/cameradevice/h;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_27

    .line 154
    :sswitch_86
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v0, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    invoke-interface {v0}, Lcom/android/common/cameradevice/e;->JK()V

    goto :goto_27

    .line 158
    :sswitch_8e
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v0, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    invoke-interface {v0}, Lcom/android/common/cameradevice/e;->Jr()V
    :try_end_95
    .catch Ljava/lang/RuntimeException; {:try_start_80 .. :try_end_95} :catch_51

    goto :goto_27

    .line 163
    :sswitch_96
    :try_start_96
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/e;->JD(Landroid/graphics/SurfaceTexture;)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_a1} :catch_a2
    .catch Ljava/lang/RuntimeException; {:try_start_96 .. :try_end_a1} :catch_51

    goto :goto_27

    .line 164
    :catch_a2
    move-exception v0

    .line 165
    :try_start_a3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 170
    :sswitch_a9
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v0, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    invoke-interface {v0}, Lcom/android/common/cameradevice/e;->JG()V

    goto/16 :goto_27

    .line 173
    :sswitch_b2
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v0, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    invoke-interface {v0}, Lcom/android/common/cameradevice/e;->JG()V

    goto/16 :goto_27

    .line 176
    :sswitch_bb
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v0, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    invoke-interface {v0}, Lcom/android/common/cameradevice/e;->JI()V

    goto/16 :goto_27

    .line 179
    :sswitch_c4
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    .line 180
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$PreviewCallback;

    .line 179
    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/e;->Jy(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_27

    .line 184
    :sswitch_d1
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    .line 185
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$PreviewCallback;

    .line 184
    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/e;->JA(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_27

    .line 188
    :sswitch_de
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/common/cameradevice/q;

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/e;->JY(Lcom/android/common/cameradevice/q;)V

    goto/16 :goto_27

    .line 191
    :sswitch_eb
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    .line 192
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$PreviewCallback;

    .line 191
    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/e;->JB(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_27

    .line 196
    :sswitch_f8
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/e;->Jm([B)V

    goto/16 :goto_27

    .line 200
    :sswitch_105
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/e;->Jn(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_27

    .line 204
    :sswitch_112
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v0, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    invoke-interface {v0}, Lcom/android/common/cameradevice/e;->Jo()V

    goto/16 :goto_27

    .line 208
    :sswitch_11b
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    .line 209
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 208
    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/e;->Jt(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_27

    .line 213
    :sswitch_128
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v0, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/e;->Jv(I)V

    goto/16 :goto_27

    .line 217
    :sswitch_133
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    .line 218
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$OnZoomChangeListener;

    .line 217
    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/e;->JE(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_27

    .line 222
    :sswitch_140
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    .line 223
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$FaceDetectionListener;

    .line 222
    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/e;->Jx(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_27

    .line 227
    :sswitch_14d
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v0, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    invoke-interface {v0}, Lcom/android/common/cameradevice/e;->JF()V

    goto/16 :goto_27

    .line 231
    :sswitch_156
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v0, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    invoke-interface {v0}, Lcom/android/common/cameradevice/e;->JH()V

    goto/16 :goto_27

    .line 235
    :sswitch_15f
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$ErrorCallback;

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/e;->Jw(Landroid/hardware/Camera$ErrorCallback;)V

    goto/16 :goto_27

    .line 238
    :sswitch_16c
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/common/cameradevice/p;

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/e;->Jz(Lcom/android/common/cameradevice/p;)V

    goto/16 :goto_27

    .line 241
    :sswitch_179
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/common/cameradevice/p;

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/e;->Jz(Lcom/android/common/cameradevice/p;)V

    goto/16 :goto_27

    .line 244
    :sswitch_186
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v1, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    invoke-interface {v1}, Lcom/android/common/cameradevice/e;->JV()Lcom/android/common/cameradevice/p;

    move-result-object v1

    iput-object v1, v0, Lcom/android/common/cameradevice/h;->Ng:Lcom/android/common/cameradevice/p;
    :try_end_192
    .catch Ljava/lang/RuntimeException; {:try_start_a3 .. :try_end_192} :catch_51

    goto/16 :goto_27

    .line 251
    :sswitch_194
    :try_start_194
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/e;->JC(Landroid/view/SurfaceHolder;)V
    :try_end_19f
    .catch Ljava/io/IOException; {:try_start_194 .. :try_end_19f} :catch_1a1
    .catch Ljava/lang/RuntimeException; {:try_start_194 .. :try_end_19f} :catch_51

    goto/16 :goto_27

    .line 252
    :catch_1a1
    move-exception v0

    .line 253
    :try_start_1a2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 257
    :sswitch_1a8
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/e;->Jp(Z)V

    goto/16 :goto_27

    .line 260
    :sswitch_1b9
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/e;->JX(Z)V

    goto/16 :goto_27

    .line 263
    :sswitch_1ca
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/e;->JT([B)V

    goto/16 :goto_27

    .line 266
    :sswitch_1d7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/common/cameradevice/k;

    .line 267
    const-string/jumbo v1, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set raw callback, meta = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/common/cameradevice/k;->Nm:Lcom/android/common/cameradevice/s;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", raw ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/common/cameradevice/k;->Nn:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v1, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    iget-object v2, v0, Lcom/android/common/cameradevice/k;->Nm:Lcom/android/common/cameradevice/s;

    iget-object v0, v0, Lcom/android/common/cameradevice/k;->Nn:Landroid/hardware/Camera$PictureCallback;

    invoke-interface {v1, v2, v0}, Lcom/android/common/cameradevice/e;->JZ(Lcom/android/common/cameradevice/s;Landroid/hardware/Camera$PictureCallback;)V

    goto/16 :goto_27

    .line 271
    :sswitch_211
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/common/cameradevice/a;

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/e;->Ka(Lcom/android/common/cameradevice/a;)V

    goto/16 :goto_27

    .line 274
    :sswitch_21e
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v0, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    invoke-interface {v0}, Lcom/android/common/cameradevice/e;->Kb()V

    goto/16 :goto_27

    .line 277
    :sswitch_227
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v0, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    invoke-interface {v0}, Lcom/android/common/cameradevice/e;->Kc()V

    goto/16 :goto_27

    .line 280
    :sswitch_230
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v1, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/common/cameradevice/c;

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/e;->JW(Lcom/android/common/cameradevice/c;)V

    goto/16 :goto_27

    .line 283
    :sswitch_23d
    iget-object v0, p0, Lcom/android/common/cameradevice/i;->Nj:Lcom/android/common/cameradevice/h;

    iget-object v0, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    invoke-interface {v0}, Lcom/android/common/cameradevice/e;->JU()V
    :try_end_244
    .catch Ljava/lang/RuntimeException; {:try_start_1a2 .. :try_end_244} :catch_51

    goto/16 :goto_27

    .line 290
    :catch_246
    move-exception v1

    .line 291
    const-string/jumbo v1, "CameraManager"

    const-string/jumbo v2, "Fail to release the camera."

    invoke-static {v1, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_64

    .line 136
    :sswitch_data_252
    .sparse-switch
        0x1 -> :sswitch_39
        0x2 -> :sswitch_71
        0x3 -> :sswitch_86
        0x4 -> :sswitch_8e
        0x5 -> :sswitch_bb
        0x6 -> :sswitch_eb
        0x7 -> :sswitch_f8
        0x8 -> :sswitch_105
        0x9 -> :sswitch_112
        0xa -> :sswitch_11b
        0xb -> :sswitch_128
        0xc -> :sswitch_133
        0xd -> :sswitch_140
        0xe -> :sswitch_14d
        0xf -> :sswitch_156
        0x10 -> :sswitch_15f
        0x11 -> :sswitch_16c
        0x12 -> :sswitch_186
        0x13 -> :sswitch_27
        0x14 -> :sswitch_1a8
        0x15 -> :sswitch_1b9
        0x16 -> :sswitch_1ca
        0x17 -> :sswitch_b2
        0x18 -> :sswitch_c4
        0x19 -> :sswitch_211
        0x1a -> :sswitch_21e
        0x1b -> :sswitch_227
        0x1c -> :sswitch_230
        0x1d -> :sswitch_23d
        0xc9 -> :sswitch_1d7
        0xca -> :sswitch_96
        0xcb -> :sswitch_a9
        0xcc -> :sswitch_194
        0xcd -> :sswitch_d1
        0xce -> :sswitch_de
        0xcf -> :sswitch_179
    .end sparse-switch
.end method
