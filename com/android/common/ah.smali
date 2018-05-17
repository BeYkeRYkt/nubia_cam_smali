.class final Lcom/android/common/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field final synthetic alb:Lcom/android/common/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 2

    .prologue
    .line 1534
    iput-object p1, p0, Lcom/android/common/ah;->alb:Lcom/android/common/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .registers 2

    .prologue
    .line 1537
    invoke-static {}, Lcom/android/common/f;->aoo()V

    .line 1538
    const/4 v0, 0x0

    return v0
.end method
