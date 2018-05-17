.class final Lcom/android/e/j;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aXH:Lcom/android/e/b;


# direct methods
.method constructor <init>(Lcom/android/e/b;)V
    .registers 2

    .prologue
    .line 684
    iput-object p1, p0, Lcom/android/e/j;->aXH:Lcom/android/e/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/e/j;->aXH:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->boo(Lcom/android/e/b;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-nez v0, :cond_15

    .line 687
    iget-object v0, p0, Lcom/android/e/j;->aXH:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->boo(Lcom/android/e/b;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->px()V

    .line 685
    :cond_15
    return-void
.end method
