.class final Lcom/android/objectclear/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aUT:Lcom/android/objectclear/c;


# direct methods
.method constructor <init>(Lcom/android/objectclear/c;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/objectclear/n;->aUT:Lcom/android/objectclear/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lcom/android/objectclear/n;->aUT:Lcom/android/objectclear/c;

    invoke-static {v0}, Lcom/android/objectclear/c;->blt(Lcom/android/objectclear/c;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 81
    return-void

    .line 82
    :cond_a
    iget-object v0, p0, Lcom/android/objectclear/n;->aUT:Lcom/android/objectclear/c;

    invoke-static {v0}, Lcom/android/objectclear/c;->bls(Lcom/android/objectclear/c;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-nez v0, :cond_17

    .line 83
    return-void

    .line 84
    :cond_17
    new-instance v0, Lcom/android/objectclear/f;

    iget-object v1, p0, Lcom/android/objectclear/n;->aUT:Lcom/android/objectclear/c;

    invoke-direct {v0, v1, v2}, Lcom/android/objectclear/f;-><init>(Lcom/android/objectclear/c;Lcom/android/objectclear/f;)V

    .line 85
    iget-object v1, p0, Lcom/android/objectclear/n;->aUT:Lcom/android/objectclear/c;

    invoke-static {v1}, Lcom/android/objectclear/c;->bls(Lcom/android/objectclear/c;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v1

    iget-object v2, p0, Lcom/android/objectclear/n;->aUT:Lcom/android/objectclear/c;

    invoke-static {v2}, Lcom/android/objectclear/c;->bls(Lcom/android/objectclear/c;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pv()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/common/appService/k;->jP(Landroid/hardware/Camera$PreviewCallback;I)V

    .line 86
    iget-object v1, p0, Lcom/android/objectclear/n;->aUT:Lcom/android/objectclear/c;

    invoke-static {v1}, Lcom/android/objectclear/c;->blu(Lcom/android/objectclear/c;)Lcom/android/objectclear/d;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 87
    iget-object v1, p0, Lcom/android/objectclear/n;->aUT:Lcom/android/objectclear/c;

    invoke-static {v1}, Lcom/android/objectclear/c;->blu(Lcom/android/objectclear/c;)Lcom/android/objectclear/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/objectclear/d;->blz()V

    .line 88
    :cond_46
    :goto_46
    iget-object v1, p0, Lcom/android/objectclear/n;->aUT:Lcom/android/objectclear/c;

    invoke-static {v1}, Lcom/android/objectclear/c;->blr(Lcom/android/objectclear/c;)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_b4

    .line 89
    const-string/jumbo v1, "NubiaObjectClearDataProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iCoutn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/objectclear/n;->aUT:Lcom/android/objectclear/c;

    invoke-static {v3}, Lcom/android/objectclear/c;->blr(Lcom/android/objectclear/c;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/android/objectclear/n;->aUT:Lcom/android/objectclear/c;

    invoke-static {v1}, Lcom/android/objectclear/c;->blv(Lcom/android/objectclear/c;)I

    move-result v1

    iget-object v2, p0, Lcom/android/objectclear/n;->aUT:Lcom/android/objectclear/c;

    invoke-static {v2}, Lcom/android/objectclear/c;->blq(Lcom/android/objectclear/c;)I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 91
    iget-object v2, p0, Lcom/android/objectclear/n;->aUT:Lcom/android/objectclear/c;

    invoke-static {v2}, Lcom/android/objectclear/c;->bls(Lcom/android/objectclear/c;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/common/cameradevice/j;->KW([B)V

    .line 94
    const-wide/16 v2, 0x1f4

    :try_start_91
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_94} :catch_9d

    .line 98
    :goto_94
    iget-object v1, p0, Lcom/android/objectclear/n;->aUT:Lcom/android/objectclear/c;

    invoke-static {v1}, Lcom/android/objectclear/c;->blt(Lcom/android/objectclear/c;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 99
    return-void

    .line 95
    :catch_9d
    move-exception v1

    .line 96
    const-string/jumbo v2, "NubiaObjectClearDataProvider"

    const-string/jumbo v3, "synthetize"

    invoke-static {v2, v3, v1}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_94

    .line 100
    :cond_a8
    iget-object v1, p0, Lcom/android/objectclear/n;->aUT:Lcom/android/objectclear/c;

    invoke-static {v1}, Lcom/android/objectclear/c;->blr(Lcom/android/objectclear/c;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/android/objectclear/c;->blw(Lcom/android/objectclear/c;I)I

    goto :goto_46

    .line 102
    :cond_b4
    iget-object v1, p0, Lcom/android/objectclear/n;->aUT:Lcom/android/objectclear/c;

    invoke-static {v1}, Lcom/android/objectclear/c;->blt(Lcom/android/objectclear/c;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 103
    return-void

    .line 104
    :cond_bd
    iget-object v1, p0, Lcom/android/objectclear/n;->aUT:Lcom/android/objectclear/c;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/objectclear/c;->blw(Lcom/android/objectclear/c;I)I

    .line 105
    iget-object v1, p0, Lcom/android/objectclear/n;->aUT:Lcom/android/objectclear/c;

    invoke-static {v1}, Lcom/android/objectclear/c;->bls(Lcom/android/objectclear/c;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/appService/k;->jK(Landroid/hardware/Camera$PreviewCallback;)V

    .line 79
    return-void
.end method
