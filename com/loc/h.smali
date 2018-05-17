.class public Lcom/loc/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b:Landroid/content/Context;

.field private bdk:Lcom/loc/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/h;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/h;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/loc/h;->a(Landroid/content/Context;)Lcom/loc/n;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/h;->bdk:Lcom/loc/n;

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/loc/n;
    .registers 6

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

    const-string/jumbo v2, "UpdateLogDB"

    const-string/jumbo v3, "getDB"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_c
.end method


# virtual methods
.method public a()Lcom/loc/av;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/loc/h;->bdk:Lcom/loc/n;

    if-eqz v0, :cond_18

    :goto_5
    const-string/jumbo v0, "1=1"

    iget-object v2, p0, Lcom/loc/h;->bdk:Lcom/loc/n;

    const-class v3, Lcom/loc/av;

    invoke-virtual {v2, v0, v3}, Lcom/loc/n;->bvU(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2c

    :goto_16
    move-object v0, v1

    :goto_17
    return-object v0

    :cond_18
    iget-object v0, p0, Lcom/loc/h;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/loc/h;->a(Landroid/content/Context;)Lcom/loc/n;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/h;->bdk:Lcom/loc/n;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_20} :catch_21

    goto :goto_5

    :catch_21
    move-exception v0

    const-string/jumbo v2, "UpdateLogDB"

    const-string/jumbo v3, "getUpdateLog"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_2c
    const/4 v2, 0x0

    :try_start_2d
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/av;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_33} :catch_21

    goto :goto_17
.end method

.method public bvG(Lcom/loc/av;)V
    .registers 5

    if-eqz p1, :cond_19

    :try_start_2
    iget-object v0, p0, Lcom/loc/h;->bdk:Lcom/loc/n;

    if-eqz v0, :cond_1a

    :goto_6
    const-string/jumbo v0, "1=1"

    iget-object v1, p0, Lcom/loc/h;->bdk:Lcom/loc/n;

    const-class v2, Lcom/loc/av;

    invoke-virtual {v1, v0, v2}, Lcom/loc/n;->bvU(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2e

    :cond_13
    iget-object v0, p0, Lcom/loc/h;->bdk:Lcom/loc/n;

    invoke-virtual {v0, p1}, Lcom/loc/n;->bvQ(Ljava/lang/Object;)V

    :goto_18
    return-void

    :cond_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/loc/h;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/loc/h;->a(Landroid/content/Context;)Lcom/loc/n;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/h;->bdk:Lcom/loc/n;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_22} :catch_23

    goto :goto_6

    :catch_23
    move-exception v0

    const-string/jumbo v1, "UpdateLogDB"

    const-string/jumbo v2, "updateLog"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_2e
    :try_start_2e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/loc/h;->bdk:Lcom/loc/n;

    invoke-virtual {v1, v0, p1}, Lcom/loc/n;->bvO(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_39} :catch_23

    goto :goto_18
.end method
