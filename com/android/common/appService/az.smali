.class final Lcom/android/common/appService/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic nR:Lcom/android/common/appService/W;


# direct methods
.method constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 1356
    iput-object p1, p0, Lcom/android/common/appService/az;->nR:Lcom/android/common/appService/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/android/common/appService/az;->nR:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rt()Lcom/android/common/ui/FaceView;

    move-result-object v0

    .line 1361
    if-eqz v0, :cond_10

    .line 1362
    invoke-virtual {v0}, Lcom/android/common/ui/FaceView;->clear()V

    .line 1363
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/FaceView;->setVisibility(I)V

    .line 1359
    :cond_10
    return-void
.end method
