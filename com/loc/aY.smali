.class public Lcom/loc/aY;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b:Landroid/content/Context;

.field private bgz:Lcom/loc/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/aY;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/aY;->b:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/loc/aY;->bAx(Landroid/content/Context;Z)Lcom/loc/n;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aY;->bgz:Lcom/loc/n;

    return-void
.end method

.method private bAx(Landroid/content/Context;Z)Lcom/loc/n;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Lcom/loc/n;

    const-class v2, Lcom/loc/bN;

    invoke-static {v2}, Lcom/loc/n;->bvK(Ljava/lang/Class;)Lcom/loc/aC;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/loc/n;-><init>(Landroid/content/Context;Lcom/loc/aC;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    if-eqz p2, :cond_15

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_13
    move-object v0, v1

    goto :goto_c

    :cond_15
    const-string/jumbo v2, "SDKDB"

    const-string/jumbo v3, "getDB"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/loc/ag;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/aY;->bgz:Lcom/loc/n;

    const-class v3, Lcom/loc/ag;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/loc/n;->bvT(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v0

    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_e
.end method

.method public bAy(Lcom/loc/ag;)V
    .registers 5

    if-eqz p1, :cond_1e

    :try_start_2
    iget-object v0, p0, Lcom/loc/aY;->bgz:Lcom/loc/n;

    if-eqz v0, :cond_1f

    :goto_6
    invoke-virtual {p1}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/aY;->bgz:Lcom/loc/n;

    const-class v2, Lcom/loc/ag;

    invoke-virtual {v1, v0, v2}, Lcom/loc/n;->bvU(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_37

    :cond_18
    iget-object v0, p0, Lcom/loc/aY;->bgz:Lcom/loc/n;

    invoke-virtual {v0, p1}, Lcom/loc/n;->bvQ(Ljava/lang/Object;)V

    :goto_1d
    return-void

    :cond_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/loc/aY;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/loc/aY;->bAx(Landroid/content/Context;Z)Lcom/loc/n;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aY;->bgz:Lcom/loc/n;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_28} :catch_29

    goto :goto_6

    :catch_29
    move-exception v0

    const-string/jumbo v1, "SDKDB"

    const-string/jumbo v2, "insert"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1d

    :cond_37
    :try_start_37
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/loc/aY;->bgz:Lcom/loc/n;

    invoke-virtual {v1, v0, p1}, Lcom/loc/n;->bvO(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_42} :catch_29

    goto :goto_1d
.end method
