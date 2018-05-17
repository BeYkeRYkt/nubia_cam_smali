.class Lcom/android/electronicfno/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private aVe:I

.field private aVf:Landroid/graphics/Bitmap;

.field private aVg:[I

.field private aVh:I

.field final synthetic aVi:Lcom/android/electronicfno/a;


# direct methods
.method public constructor <init>(Lcom/android/electronicfno/a;IIIIIZI)V
    .registers 18

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    .line 152
    const-string/jumbo v0, "EletronicObject"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/electronicfno/c;->aVg:[I

    .line 153
    int-to-double v0, p2

    const-wide/high16 v2, 0x408e000000000000L    # 960.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v7, v0

    .line 154
    sparse-switch p8, :sswitch_data_4a

    .line 161
    iput p3, p0, Lcom/android/electronicfno/c;->aVe:I

    iput p2, p0, Lcom/android/electronicfno/c;->aVh:I

    .line 164
    :goto_1d
    iget v0, p0, Lcom/android/electronicfno/c;->aVh:I

    div-int/2addr v0, v7

    iget v1, p0, Lcom/android/electronicfno/c;->aVe:I

    div-int/2addr v1, v7

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/electronicfno/c;->aVf:Landroid/graphics/Bitmap;

    .line 165
    new-instance v0, Lcom/nubia/camera/common/Native/EletronicAlgorithm;

    invoke-direct {v0}, Lcom/nubia/camera/common/Native/EletronicAlgorithm;-><init>()V

    invoke-static {p1, v0}, Lcom/android/electronicfno/a;->bmE(Lcom/android/electronicfno/a;Lcom/nubia/camera/common/Native/EletronicAlgorithm;)Lcom/nubia/camera/common/Native/EletronicAlgorithm;

    .line 166
    invoke-static {p1}, Lcom/android/electronicfno/a;->bmy(Lcom/android/electronicfno/a;)Lcom/nubia/camera/common/Native/EletronicAlgorithm;

    move-result-object v0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/nubia/camera/common/Native/EletronicAlgorithm;->btN(IIIIIZII)V

    .line 151
    return-void

    .line 157
    :sswitch_44
    iput p3, p0, Lcom/android/electronicfno/c;->aVh:I

    iput p2, p0, Lcom/android/electronicfno/c;->aVe:I

    goto :goto_1d

    .line 154
    nop

    :sswitch_data_4a
    .sparse-switch
        0x5a -> :sswitch_44
        0x10e -> :sswitch_44
    .end sparse-switch
.end method


# virtual methods
.method public declared-synchronized bmM()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 169
    :try_start_1
    iget-object v0, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/electronicfno/a;->bmF(Lcom/android/electronicfno/a;I)I

    .line 170
    invoke-virtual {p0}, Lcom/android/electronicfno/c;->notify()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    .line 168
    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bmN()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 173
    :try_start_1
    iget-object v0, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/electronicfno/a;->bmF(Lcom/android/electronicfno/a;I)I

    .line 174
    invoke-virtual {p0}, Lcom/android/electronicfno/c;->notify()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    .line 172
    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 178
    const-string/jumbo v0, "ElectronicOjbect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ele proces thread enter, id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/electronicfno/c;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v0}, Lcom/android/electronicfno/a;->bmz(Lcom/android/electronicfno/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 180
    iget-object v0, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v0, v4}, Lcom/android/electronicfno/a;->bmF(Lcom/android/electronicfno/a;I)I

    .line 181
    :goto_30
    iget-object v0, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v0}, Lcom/android/electronicfno/a;->bmD(Lcom/android/electronicfno/a;)I

    move-result v0

    if-ne v0, v4, :cond_ad

    .line 182
    iget-object v0, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v0}, Lcom/android/electronicfno/a;->bmy(Lcom/android/electronicfno/a;)Lcom/nubia/camera/common/Native/EletronicAlgorithm;

    move-result-object v0

    iget-object v1, p0, Lcom/android/electronicfno/c;->aVf:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/electronicfno/c;->aVg:[I

    invoke-virtual {v0, v1, v2}, Lcom/nubia/camera/common/Native/EletronicAlgorithm;->btM(Landroid/graphics/Bitmap;[I)V

    .line 183
    iget-object v0, p0, Lcom/android/electronicfno/c;->aVf:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/android/electronicfno/c;->aVg:[I

    aget v1, v1, v5

    iget-object v2, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v2}, Lcom/android/electronicfno/a;->bmB(Lcom/android/electronicfno/a;)I

    move-result v2

    if-ge v1, v2, :cond_84

    .line 185
    new-instance v1, Lcom/android/electronicfno/d;

    iget-object v2, p0, Lcom/android/electronicfno/c;->aVg:[I

    aget v2, v2, v7

    mul-int/lit8 v2, v2, 0x64

    iget-object v3, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v3}, Lcom/android/electronicfno/a;->bmB(Lcom/android/electronicfno/a;)I

    move-result v3

    div-int/2addr v2, v3

    invoke-direct {v1, v2, v0}, Lcom/android/electronicfno/d;-><init>(ILandroid/graphics/Bitmap;)V

    .line 186
    iget-object v0, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v0}, Lcom/android/electronicfno/a;->bmz(Lcom/android/electronicfno/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v1}, Lcom/android/electronicfno/a;->bmz(Lcom/android/electronicfno/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    :goto_7c
    const-wide/16 v0, 0x28

    :try_start_7e
    invoke-static {v0, v1}, Lcom/android/electronicfno/c;->sleep(J)V
    :try_end_81
    .catch Ljava/lang/InterruptedException; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_30

    .line 197
    :catch_82
    move-exception v0

    goto :goto_30

    .line 188
    :cond_84
    iget-object v1, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v1}, Lcom/android/electronicfno/a;->bmx(Lcom/android/electronicfno/a;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 189
    new-instance v1, Lcom/android/electronicfno/d;

    const/16 v2, 0x63

    invoke-direct {v1, v2, v0}, Lcom/android/electronicfno/d;-><init>(ILandroid/graphics/Bitmap;)V

    .line 190
    iget-object v0, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v0}, Lcom/android/electronicfno/a;->bmz(Lcom/android/electronicfno/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v1}, Lcom/android/electronicfno/a;->bmz(Lcom/android/electronicfno/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7c

    .line 193
    :cond_a7
    iget-object v0, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v0, v6}, Lcom/android/electronicfno/a;->bmF(Lcom/android/electronicfno/a;I)I

    goto :goto_7c

    .line 200
    :cond_ad
    iget-object v0, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v0}, Lcom/android/electronicfno/a;->bmD(Lcom/android/electronicfno/a;)I

    move-result v0

    if-ne v0, v6, :cond_12b

    .line 202
    iget-object v0, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v0}, Lcom/android/electronicfno/a;->bmz(Lcom/android/electronicfno/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 203
    iget v0, p0, Lcom/android/electronicfno/c;->aVh:I

    iget v1, p0, Lcom/android/electronicfno/c;->aVe:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v1}, Lcom/android/electronicfno/a;->bmy(Lcom/android/electronicfno/a;)Lcom/nubia/camera/common/Native/EletronicAlgorithm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nubia/camera/common/Native/EletronicAlgorithm;->btO(Landroid/graphics/Bitmap;)V

    .line 205
    iget-object v1, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v1}, Lcom/android/electronicfno/a;->bmC(Lcom/android/electronicfno/a;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/D;->awa(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v1}, Lcom/android/electronicfno/a;->bmz(Lcom/android/electronicfno/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v1}, Lcom/android/electronicfno/a;->bmz(Lcom/android/electronicfno/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 212
    :goto_ee
    iget-object v0, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v0}, Lcom/android/electronicfno/a;->bmy(Lcom/android/electronicfno/a;)Lcom/nubia/camera/common/Native/EletronicAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/camera/common/Native/EletronicAlgorithm;->release()V

    .line 213
    iget-object v0, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v0}, Lcom/android/electronicfno/a;->bmz(Lcom/android/electronicfno/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 214
    const-string/jumbo v0, "ElectronicOjbect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ele proces thread exit, id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/electronicfno/c;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/electronicfno/a;->bmE(Lcom/android/electronicfno/a;Lcom/nubia/camera/common/Native/EletronicAlgorithm;)Lcom/nubia/camera/common/Native/EletronicAlgorithm;

    .line 216
    iget-object v0, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v0, v5}, Lcom/android/electronicfno/a;->bmF(Lcom/android/electronicfno/a;I)I

    .line 177
    return-void

    .line 209
    :cond_12b
    iget-object v0, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v0}, Lcom/android/electronicfno/a;->bmy(Lcom/android/electronicfno/a;)Lcom/nubia/camera/common/Native/EletronicAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/camera/common/Native/EletronicAlgorithm;->btL()V

    .line 210
    iget-object v0, p0, Lcom/android/electronicfno/c;->aVi:Lcom/android/electronicfno/a;

    invoke-static {v0}, Lcom/android/electronicfno/a;->bmz(Lcom/android/electronicfno/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_ee
.end method
