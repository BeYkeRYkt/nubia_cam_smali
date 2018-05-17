.class public Lcom/loc/bn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bhm:Lcom/loc/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    new-instance v0, Lcom/loc/n;

    const-class v1, Lcom/loc/bN;

    invoke-static {v1}, Lcom/loc/n;->bvK(Ljava/lang/Class;)Lcom/loc/aC;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/loc/n;-><init>(Landroid/content/Context;Lcom/loc/aC;)V

    iput-object v0, p0, Lcom/loc/bn;->bhm:Lcom/loc/n;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10
.end method

.method private bAY(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 5

    invoke-static {p1}, Lcom/loc/a;->bvA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bn;->bhm:Lcom/loc/n;

    invoke-virtual {v1, v0, p2}, Lcom/loc/n;->bvM(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bAW(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 6

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/loc/bn;->bAY(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string/jumbo v1, "LogDB"

    const-string/jumbo v2, "delLog"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public bAX(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/loc/bn;->bAY(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public bAZ(ILjava/lang/Class;)Ljava/util/List;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/loc/a;->bvB(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/bn;->bhm:Lcom/loc/n;

    invoke-virtual {v2, v0, p2}, Lcom/loc/n;->bvU(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    :goto_b
    return-object v0

    :catch_c
    move-exception v0

    const-string/jumbo v2, "LogDB"

    const-string/jumbo v3, "ByState"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_b
.end method

.method public bBa(Lcom/loc/a;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/loc/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/a;->bvA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/loc/bn;->bhm:Lcom/loc/n;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/loc/n;->bvT(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1f

    :cond_18
    iget-object v0, p0, Lcom/loc/bn;->bhm:Lcom/loc/n;

    invoke-virtual {v0, p1, v4}, Lcom/loc/n;->bvR(Ljava/lang/Object;Z)V

    :goto_1d
    return-void

    :cond_1e
    return-void

    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/a;

    invoke-virtual {p1}, Lcom/loc/a;->a()I

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v0, v3}, Lcom/loc/a;->bvz(I)V

    :goto_34
    iget-object v2, p0, Lcom/loc/bn;->bhm:Lcom/loc/n;

    invoke-virtual {v2, v1, v0, v4}, Lcom/loc/n;->bvN(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1d

    :cond_3a
    invoke-virtual {v0}, Lcom/loc/a;->c()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/loc/a;->bvz(I)V

    goto :goto_34
.end method

.method public bBb(Lcom/loc/a;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Lcom/loc/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/a;->bvA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bn;->bhm:Lcom/loc/n;

    invoke-virtual {v1, v0, p1}, Lcom/loc/n;->bvO(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    const-string/jumbo v1, "LogDB"

    const-string/jumbo v2, "updateLogInfo"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method
