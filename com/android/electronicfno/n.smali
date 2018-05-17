.class final Lcom/android/electronicfno/n;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aVV:Lcom/android/electronicfno/a;


# direct methods
.method constructor <init>(Lcom/android/electronicfno/a;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/electronicfno/n;->aVV:Lcom/android/electronicfno/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 42
    iget-object v0, p0, Lcom/android/electronicfno/n;->aVV:Lcom/android/electronicfno/a;

    invoke-static {v0}, Lcom/android/electronicfno/a;->bmA(Lcom/android/electronicfno/a;)Lcom/android/electronicfno/b;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    .line 43
    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5c

    .line 41
    :goto_f
    return-void

    .line 45
    :pswitch_10
    iget-object v0, p0, Lcom/android/electronicfno/n;->aVV:Lcom/android/electronicfno/a;

    invoke-static {v0}, Lcom/android/electronicfno/a;->bmA(Lcom/android/electronicfno/a;)Lcom/android/electronicfno/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/electronicfno/b;->bmG()V

    goto :goto_f

    .line 48
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/electronicfno/d;

    .line 49
    iget-object v1, p0, Lcom/android/electronicfno/n;->aVV:Lcom/android/electronicfno/a;

    invoke-static {v1}, Lcom/android/electronicfno/a;->bmA(Lcom/android/electronicfno/a;)Lcom/android/electronicfno/b;

    move-result-object v1

    invoke-static {v0}, Lcom/android/electronicfno/d;->bmP(Lcom/android/electronicfno/d;)I

    move-result v2

    invoke-static {v0}, Lcom/android/electronicfno/d;->bmO(Lcom/android/electronicfno/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/android/electronicfno/b;->bmI(ILandroid/graphics/Bitmap;)V

    goto :goto_f

    .line 52
    :pswitch_30
    iget-object v0, p0, Lcom/android/electronicfno/n;->aVV:Lcom/android/electronicfno/a;

    invoke-static {v0}, Lcom/android/electronicfno/a;->bmA(Lcom/android/electronicfno/a;)Lcom/android/electronicfno/b;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/electronicfno/b;->bmK(I)V

    goto :goto_f

    .line 55
    :pswitch_3a
    iget-object v0, p0, Lcom/android/electronicfno/n;->aVV:Lcom/android/electronicfno/a;

    invoke-static {v0}, Lcom/android/electronicfno/a;->bmA(Lcom/android/electronicfno/a;)Lcom/android/electronicfno/b;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/electronicfno/b;->bmL(I)V

    goto :goto_f

    .line 58
    :pswitch_44
    iget-object v0, p0, Lcom/android/electronicfno/n;->aVV:Lcom/android/electronicfno/a;

    invoke-static {v0}, Lcom/android/electronicfno/a;->bmA(Lcom/android/electronicfno/a;)Lcom/android/electronicfno/b;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v0}, Lcom/android/electronicfno/b;->bmH(Landroid/graphics/Bitmap;)V

    goto :goto_f

    .line 61
    :pswitch_52
    iget-object v0, p0, Lcom/android/electronicfno/n;->aVV:Lcom/android/electronicfno/a;

    invoke-static {v0}, Lcom/android/electronicfno/a;->bmA(Lcom/android/electronicfno/a;)Lcom/android/electronicfno/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/electronicfno/b;->bmJ()V

    goto :goto_f

    .line 43
    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_30
        :pswitch_1a
        :pswitch_10
        :pswitch_44
        :pswitch_52
    .end packed-switch
.end method
