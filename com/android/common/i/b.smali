.class Lcom/android/common/i/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# instance fields
.field final synthetic YK:Lcom/android/common/i/a;


# direct methods
.method private constructor <init>(Lcom/android/common/i/a;)V
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/common/i/b;->YK:Lcom/android/common/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/i/a;Lcom/android/common/i/b;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/i/b;-><init>(Lcom/android/common/i/a;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .registers 7

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/common/i/b;->YK:Lcom/android/common/i/a;

    invoke-static {v0}, Lcom/android/common/i/a;->aeU(Lcom/android/common/i/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/common/appService/W;->qN(J)V

    .line 162
    const-string/jumbo v0, "MTKContinousShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/i/b;->YK:Lcom/android/common/i/a;

    invoke-static {v2}, Lcom/android/common/i/a;->aeU(Lcom/android/common/i/a;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->qO()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/common/i/b;->YK:Lcom/android/common/i/a;

    invoke-static {v4}, Lcom/android/common/i/a;->aeU(Lcom/android/common/i/a;)Lcom/android/common/appService/W;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/appService/W;->pS()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method
