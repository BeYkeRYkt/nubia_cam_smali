.class final Lcom/android/common/P;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic akH:Lcom/android/common/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 2

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/common/P;->akH:Lcom/android/common/ActivityBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/common/P;->akH:Lcom/android/common/ActivityBase;

    invoke-static {v0}, Lcom/android/common/ActivityBase;->avM(Lcom/android/common/ActivityBase;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 304
    iget-object v0, p0, Lcom/android/common/P;->akH:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->finish()V

    .line 302
    :cond_d
    return-void
.end method
