.class final Lcom/android/common/f/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic Wa:Lcom/android/common/f/b;


# direct methods
.method constructor <init>(Lcom/android/common/f/b;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 11

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_dc

    .line 114
    :goto_8
    return v6

    .line 74
    :pswitch_9
    iget-object v0, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    invoke-static {v0}, Lcom/android/common/f/b;->aat(Lcom/android/common/f/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/l/c;->agi(Ljava/lang/String;)Z

    .line 75
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 76
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 77
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 78
    iget-object v3, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    array-length v4, v0

    invoke-static {v0, v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/f/b;->aaA(Lcom/android/common/f/b;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 79
    invoke-static {v0}, Lcom/android/common/c;->aob([B)I

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    iget-object v2, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    invoke-static {v2}, Lcom/android/common/f/b;->aas(Lcom/android/common/f/b;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/common/D;->awa(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/f/b;->aaA(Lcom/android/common/f/b;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 81
    iget-object v0, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    iget-object v1, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    iget-object v2, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    invoke-static {v2}, Lcom/android/common/f/b;->aas(Lcom/android/common/f/b;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/f/b;->aaF(Lcom/android/common/f/b;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/f/b;->aaA(Lcom/android/common/f/b;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 82
    iget-object v0, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    invoke-static {v0, v6}, Lcom/android/common/f/b;->aaz(Lcom/android/common/f/b;Z)Z

    .line 83
    iget-object v0, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    invoke-static {v0}, Lcom/android/common/f/b;->aaH(Lcom/android/common/f/b;)V

    .line 84
    iget-object v0, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    invoke-static {v0}, Lcom/android/common/f/b;->aaw(Lcom/android/common/f/b;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    .line 85
    :try_start_5e
    iget-object v0, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    invoke-static {v0}, Lcom/android/common/f/b;->aaw(Lcom/android/common/f/b;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/f/b;->aaC(Lcom/android/common/f/b;Ljava/lang/Integer;)Ljava/lang/Integer;
    :try_end_71
    .catchall {:try_start_5e .. :try_end_71} :catchall_73

    monitor-exit v1

    goto :goto_8

    .line 84
    :catchall_73
    move-exception v0

    monitor-exit v1

    throw v0

    .line 89
    :pswitch_76
    iget-object v0, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    invoke-static {v0}, Lcom/android/common/f/b;->aat(Lcom/android/common/f/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/l/c;->agi(Ljava/lang/String;)Z

    .line 90
    iget-object v0, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    invoke-static {v0, v6}, Lcom/android/common/f/b;->aaz(Lcom/android/common/f/b;Z)Z

    .line 91
    iget-object v0, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    invoke-static {v0}, Lcom/android/common/f/b;->aaH(Lcom/android/common/f/b;)V

    goto/16 :goto_8

    .line 94
    :pswitch_8b
    iget-object v0, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    invoke-static {v0}, Lcom/android/common/f/b;->aat(Lcom/android/common/f/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/l/c;->agi(Ljava/lang/String;)Z

    .line 95
    iget-object v0, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    invoke-static {v0, v6}, Lcom/android/common/f/b;->aaD(Lcom/android/common/f/b;Z)Z

    .line 96
    iget-object v0, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    invoke-static {v0}, Lcom/android/common/f/b;->aay(Lcom/android/common/f/b;)I

    move-result v3

    .line 97
    iget-object v0, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    invoke-static {v0}, Lcom/android/common/f/b;->aav(Lcom/android/common/f/b;)I

    move-result v4

    .line 98
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 99
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 100
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v5, v0, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 101
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 103
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    move v2, v1

    .line 104
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    invoke-static {v1, v0}, Lcom/android/common/f/b;->aaA(Lcom/android/common/f/b;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 106
    iget-object v0, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    invoke-static {v0}, Lcom/android/common/f/b;->aaH(Lcom/android/common/f/b;)V

    .line 108
    iput-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_8

    .line 111
    :pswitch_d5
    iget-object v0, p0, Lcom/android/common/f/i;->Wa:Lcom/android/common/f/b;

    invoke-static {v0}, Lcom/android/common/f/b;->aaG(Lcom/android/common/f/b;)V

    goto/16 :goto_8

    .line 72
    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_76
        :pswitch_8b
        :pswitch_d5
        :pswitch_9
    .end packed-switch
.end method
