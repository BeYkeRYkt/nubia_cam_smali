.class public Lcom/android/lightpainting/h;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aus:Lcom/android/lightpainting/e;


# direct methods
.method public constructor <init>(Lcom/android/lightpainting/e;)V
    .registers 2

    .prologue
    .line 976
    iput-object p1, p0, Lcom/android/lightpainting/h;->aus:Lcom/android/lightpainting/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private aHn()V
    .registers 2

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/lightpainting/h;->aus:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGP(Lcom/android/lightpainting/e;)Lcom/android/common/f/b;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1013
    iget-object v0, p0, Lcom/android/lightpainting/h;->aus:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGP(Lcom/android/lightpainting/e;)Lcom/android/common/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/f/b;->stop()V

    .line 1011
    :cond_11
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 979
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_80

    .line 978
    :goto_6
    return-void

    .line 981
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 982
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 983
    return-void

    .line 985
    :cond_12
    iget-object v1, p0, Lcom/android/lightpainting/h;->aus:Lcom/android/lightpainting/e;

    invoke-static {v1}, Lcom/android/lightpainting/e;->aGA(Lcom/android/lightpainting/e;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-static {v1}, Lcom/android/common/h;->apu(I)I

    move-result v1

    .line 986
    invoke-static {v0, v1}, Lcom/android/common/D;->awa(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 987
    iget-object v1, p0, Lcom/android/lightpainting/h;->aus:Lcom/android/lightpainting/e;

    invoke-static {v1}, Lcom/android/lightpainting/e;->aGK(Lcom/android/lightpainting/e;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 988
    iget-object v1, p0, Lcom/android/lightpainting/h;->aus:Lcom/android/lightpainting/e;

    iget-object v2, p0, Lcom/android/lightpainting/h;->aus:Lcom/android/lightpainting/e;

    invoke-static {v2}, Lcom/android/lightpainting/e;->aGP(Lcom/android/lightpainting/e;)Lcom/android/common/f/b;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/lightpainting/e;->aHe(Lcom/android/lightpainting/e;Lcom/android/common/f/b;Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 991
    :sswitch_39
    invoke-direct {p0}, Lcom/android/lightpainting/h;->aHn()V

    .line 992
    iget-object v0, p0, Lcom/android/lightpainting/h;->aus:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGD(Lcom/android/lightpainting/e;)Lcom/android/common/CameraBufferManager;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 993
    iget-object v0, p0, Lcom/android/lightpainting/h;->aus:Lcom/android/lightpainting/e;

    iget-object v1, p0, Lcom/android/lightpainting/h;->aus:Lcom/android/lightpainting/e;

    invoke-static {v1}, Lcom/android/lightpainting/e;->aGD(Lcom/android/lightpainting/e;)Lcom/android/common/CameraBufferManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/lightpainting/e;->aHh(Lcom/android/lightpainting/e;Lcom/android/common/CameraBufferManager;)V

    .line 995
    :cond_4f
    iget-object v0, p0, Lcom/android/lightpainting/h;->aus:Lcom/android/lightpainting/e;

    invoke-virtual {v0}, Lcom/android/lightpainting/e;->releaseBuffer()V

    .line 996
    iget-object v0, p0, Lcom/android/lightpainting/h;->aus:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aHg(Lcom/android/lightpainting/e;)V

    .line 997
    iget-object v0, p0, Lcom/android/lightpainting/h;->aus:Lcom/android/lightpainting/e;

    invoke-static {v0, v2}, Lcom/android/lightpainting/e;->aGV(Lcom/android/lightpainting/e;Lcom/android/common/k/a;)Lcom/android/common/k/a;

    .line 998
    iget-object v0, p0, Lcom/android/lightpainting/h;->aus:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aHk(Lcom/android/lightpainting/e;)V

    .line 999
    iget-object v0, p0, Lcom/android/lightpainting/h;->aus:Lcom/android/lightpainting/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/lightpainting/e;->aGW(Lcom/android/lightpainting/e;I)I

    .line 1000
    iget-object v0, p0, Lcom/android/lightpainting/h;->aus:Lcom/android/lightpainting/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/lightpainting/e;->aHd(Lcom/android/lightpainting/e;Z)V

    goto :goto_6

    .line 1003
    :sswitch_70
    iget-object v0, p0, Lcom/android/lightpainting/h;->aus:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aHf(Lcom/android/lightpainting/e;)V

    goto :goto_6

    .line 1006
    :sswitch_76
    iget-object v0, p0, Lcom/android/lightpainting/h;->aus:Lcom/android/lightpainting/e;

    const-string/jumbo v1, "off"

    invoke-static {v0, v1}, Lcom/android/lightpainting/e;->aHj(Lcom/android/lightpainting/e;Ljava/lang/String;)V

    goto :goto_6

    .line 979
    nop

    :sswitch_data_80
    .sparse-switch
        0x1 -> :sswitch_7
        0x45 -> :sswitch_39
        0x4a -> :sswitch_70
        0x6a -> :sswitch_76
    .end sparse-switch
.end method
