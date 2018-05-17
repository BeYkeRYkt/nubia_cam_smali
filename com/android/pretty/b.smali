.class Lcom/android/pretty/b;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aCt:Lcom/android/pretty/a;


# direct methods
.method constructor <init>(Lcom/android/pretty/a;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/pretty/b;->aCt:Lcom/android/pretty/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_40

    .line 116
    :goto_6
    return-void

    .line 119
    :pswitch_7
    iget-object v0, p0, Lcom/android/pretty/b;->aCt:Lcom/android/pretty/a;

    invoke-static {v0}, Lcom/android/pretty/a;->aRz(Lcom/android/pretty/a;)Lcom/android/pretty/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/pretty/b;->removeMessages(I)V

    .line 120
    iget-object v0, p0, Lcom/android/pretty/b;->aCt:Lcom/android/pretty/a;

    invoke-static {v0, v2}, Lcom/android/pretty/a;->aRB(Lcom/android/pretty/a;Z)Z

    .line 121
    iget-object v0, p0, Lcom/android/pretty/b;->aCt:Lcom/android/pretty/a;

    invoke-static {v0}, Lcom/android/pretty/a;->aRI(Lcom/android/pretty/a;)V

    goto :goto_6

    .line 124
    :pswitch_1b
    iget-object v0, p0, Lcom/android/pretty/b;->aCt:Lcom/android/pretty/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/pretty/a;->aRC(Lcom/android/pretty/a;Lcom/android/pretty/d;)Lcom/android/pretty/d;

    .line 125
    iget-object v1, p0, Lcom/android/pretty/b;->aCt:Lcom/android/pretty/a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v1, v0}, Lcom/android/pretty/a;->aRH(Lcom/android/pretty/a;[B)V

    goto :goto_6

    .line 128
    :pswitch_2b
    iget-object v0, p0, Lcom/android/pretty/b;->aCt:Lcom/android/pretty/a;

    invoke-static {v0}, Lcom/android/pretty/a;->aRz(Lcom/android/pretty/a;)Lcom/android/pretty/b;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/pretty/b;->removeMessages(I)V

    .line 129
    iget-object v0, p0, Lcom/android/pretty/b;->aCt:Lcom/android/pretty/a;

    invoke-static {v0, v2}, Lcom/android/pretty/a;->aRD(Lcom/android/pretty/a;Z)Z

    .line 130
    iget-object v0, p0, Lcom/android/pretty/b;->aCt:Lcom/android/pretty/a;

    invoke-static {v0}, Lcom/android/pretty/a;->aRI(Lcom/android/pretty/a;)V

    goto :goto_6

    .line 117
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1b
        :pswitch_2b
    .end packed-switch
.end method
