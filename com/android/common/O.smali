.class final Lcom/android/common/O;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic akG:Lcom/android/common/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 2

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/common/O;->akG:Lcom/android/common/ActivityBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/common/O;->akG:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->atN()V

    .line 293
    return-void
.end method
