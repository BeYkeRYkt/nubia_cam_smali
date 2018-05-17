.class public final Lcom/android/common/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field private Vh:Lcom/android/common/appService/W;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/e/f;->Vh:Lcom/android/common/appService/W;

    .line 16
    iput-object p1, p0, Lcom/android/common/e/f;->Vh:Lcom/android/common/appService/W;

    .line 15
    return-void
.end method

.method private ZH()Lcom/android/common/appService/W;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/common/e/f;->Vh:Lcom/android/common/appService/W;

    return-object v0
.end method

.method private ZI()J
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/common/e/f;->ZH()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rw()J

    move-result-wide v0

    return-wide v0
.end method

.method private ZJ()J
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/common/e/f;->ZH()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qO()J

    move-result-wide v0

    return-wide v0
.end method

.method private ZK(J)V
    .registers 4

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/common/e/f;->ZH()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/common/appService/W;->rQ(J)V

    .line 31
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 9

    .prologue
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/common/e/f;->ZK(J)V

    .line 23
    const-string/jumbo v0, "RawPictureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mShutterToRawCallbackTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 24
    invoke-direct {p0}, Lcom/android/common/e/f;->ZI()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/common/e/f;->ZJ()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 23
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 24
    const-string/jumbo v2, "ms"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method
