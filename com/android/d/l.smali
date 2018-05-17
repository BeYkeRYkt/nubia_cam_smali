.class final Lcom/android/d/l;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aGk:Lcom/android/d/f;


# direct methods
.method constructor <init>(Lcom/android/d/f;)V
    .registers 2

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/d/l;->aGk:Lcom/android/d/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 226
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    .line 225
    :cond_5
    :goto_5
    return-void

    .line 228
    :pswitch_6
    iget-object v0, p0, Lcom/android/d/l;->aGk:Lcom/android/d/f;

    invoke-static {v0}, Lcom/android/d/f;->aUL(Lcom/android/d/f;)Lcom/android/d/g;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 229
    iget-object v0, p0, Lcom/android/d/l;->aGk:Lcom/android/d/f;

    invoke-static {v0}, Lcom/android/d/f;->aUL(Lcom/android/d/f;)Lcom/android/d/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/d/g;->aUN()V

    goto :goto_5

    .line 233
    :pswitch_18
    iget-object v0, p0, Lcom/android/d/l;->aGk:Lcom/android/d/f;

    invoke-static {v0}, Lcom/android/d/f;->aUL(Lcom/android/d/f;)Lcom/android/d/g;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 234
    iget-object v0, p0, Lcom/android/d/l;->aGk:Lcom/android/d/f;

    invoke-static {v0}, Lcom/android/d/f;->aUL(Lcom/android/d/f;)Lcom/android/d/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/d/g;->aUM()V

    goto :goto_5

    .line 226
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_18
    .end packed-switch
.end method
