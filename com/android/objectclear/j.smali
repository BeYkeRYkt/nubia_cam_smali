.class Lcom/android/objectclear/j;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aUN:Lcom/android/objectclear/i;


# direct methods
.method public constructor <init>(Lcom/android/objectclear/i;)V
    .registers 3

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/objectclear/j;->aUN:Lcom/android/objectclear/i;

    .line 118
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 117
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7c

    .line 122
    :goto_7
    return-void

    .line 125
    :pswitch_8
    iget-object v0, p0, Lcom/android/objectclear/j;->aUN:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->bmd(Lcom/android/objectclear/i;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/android/objectclear/j;->aUN:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->bme(Lcom/android/objectclear/i;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 129
    :pswitch_1b
    iget-object v0, p0, Lcom/android/objectclear/j;->aUN:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->bmd(Lcom/android/objectclear/i;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_7

    .line 132
    :pswitch_27
    iget-object v1, p0, Lcom/android/objectclear/j;->aUN:Lcom/android/objectclear/i;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/android/objectclear/i;->bmh(Lcom/android/objectclear/i;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 133
    iget-object v0, p0, Lcom/android/objectclear/j;->aUN:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->bmb(Lcom/android/objectclear/i;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_7

    .line 136
    :pswitch_3e
    iget-object v0, p0, Lcom/android/objectclear/j;->aUN:Lcom/android/objectclear/i;

    invoke-static {v0, v2}, Lcom/android/objectclear/i;->bmf(Lcom/android/objectclear/i;Z)Z

    .line 137
    iget-object v0, p0, Lcom/android/objectclear/j;->aUN:Lcom/android/objectclear/i;

    invoke-virtual {v0}, Lcom/android/objectclear/i;->blO()V

    .line 138
    iget-object v0, p0, Lcom/android/objectclear/j;->aUN:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->blX(Lcom/android/objectclear/i;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pB()V

    .line 139
    iget-object v0, p0, Lcom/android/objectclear/j;->aUN:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->bmk(Lcom/android/objectclear/i;)V

    .line 140
    iget-object v0, p0, Lcom/android/objectclear/j;->aUN:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->bmc(Lcom/android/objectclear/i;)Lcom/android/camera/ObjectClear/NubiaObjectClear;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ObjectClear/NubiaObjectClear;->ayV()V

    .line 141
    iget-object v0, p0, Lcom/android/objectclear/j;->aUN:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->bmm(Lcom/android/objectclear/i;)V

    goto :goto_7

    .line 144
    :pswitch_65
    iget-object v0, p0, Lcom/android/objectclear/j;->aUN:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->blX(Lcom/android/objectclear/i;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 145
    iget-object v0, p0, Lcom/android/objectclear/j;->aUN:Lcom/android/objectclear/i;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/objectclear/i;->blV(I)V

    goto :goto_7

    .line 148
    :pswitch_76
    iget-object v0, p0, Lcom/android/objectclear/j;->aUN:Lcom/android/objectclear/i;

    invoke-virtual {v0}, Lcom/android/objectclear/i;->blQ()V

    goto :goto_7

    .line 123
    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_1b
        :pswitch_27
        :pswitch_3e
        :pswitch_65
        :pswitch_76
    .end packed-switch
.end method
