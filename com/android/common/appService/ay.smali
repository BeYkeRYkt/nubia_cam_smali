.class final Lcom/android/common/appService/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic nQ:Lcom/android/common/appService/W;


# direct methods
.method constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 1324
    iput-object p1, p0, Lcom/android/common/appService/ay;->nQ:Lcom/android/common/appService/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/common/appService/ay;->nQ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rt()Lcom/android/common/ui/FaceView;

    move-result-object v0

    .line 1329
    if-eqz v0, :cond_f

    .line 1330
    invoke-virtual {v0}, Lcom/android/common/ui/FaceView;->clear()V

    .line 1331
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/FaceView;->setVisibility(I)V

    .line 1327
    :cond_f
    return-void
.end method
