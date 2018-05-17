.class public final Lcom/android/common/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field private Vg:Lcom/android/common/appService/W;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/e/e;->Vg:Lcom/android/common/appService/W;

    .line 14
    iput-object p1, p0, Lcom/android/common/e/e;->Vg:Lcom/android/common/appService/W;

    .line 13
    return-void
.end method

.method private ZC()Lcom/android/common/appService/W;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/common/e/e;->Vg:Lcom/android/common/appService/W;

    return-object v0
.end method

.method private ZD()J
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/common/e/e;->ZC()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rM()J

    move-result-wide v0

    return-wide v0
.end method

.method private ZE()J
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/common/e/e;->ZC()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rL()J

    move-result-wide v0

    return-wide v0
.end method

.method private ZF()Z
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/common/e/e;->ZC()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    return v0
.end method

.method private ZG(J)V
    .registers 4

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/common/e/e;->ZC()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/common/appService/W;->rN(J)V

    .line 39
    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 7

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/common/e/e;->ZF()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    return-void

    .line 22
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/common/e/e;->ZE()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/common/e/e;->ZG(J)V

    .line 23
    const-string/jumbo v0, "AutoFocusCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAutoFocusTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/common/e/e;->ZD()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/android/common/e/e;->Vg:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/i;->el(Z)V

    .line 18
    return-void
.end method
