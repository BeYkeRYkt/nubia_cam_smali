.class public final Lcom/android/common/e/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field private Vi:Lcom/android/common/appService/W;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/e/g;->Vi:Lcom/android/common/appService/W;

    .line 14
    iput-object p1, p0, Lcom/android/common/e/g;->Vi:Lcom/android/common/appService/W;

    .line 13
    return-void
.end method

.method private ZL()Lcom/android/common/appService/W;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/common/e/g;->Vi:Lcom/android/common/appService/W;

    return-object v0
.end method

.method private ZM()J
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/common/e/g;->ZL()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rx()J

    move-result-wide v0

    return-wide v0
.end method

.method private ZN()J
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/common/e/g;->ZL()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qO()J

    move-result-wide v0

    return-wide v0
.end method

.method private ZO(J)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/common/e/g;->ZL()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/common/appService/W;->sc(J)V

    .line 30
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 9

    .prologue
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/common/e/g;->ZO(J)V

    .line 20
    const-string/jumbo v0, "PostViewPictureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mShutterToPostViewCallbackTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 21
    invoke-direct {p0}, Lcom/android/common/e/g;->ZM()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/common/e/g;->ZN()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 22
    const-string/jumbo v2, "ms"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method