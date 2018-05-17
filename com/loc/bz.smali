.class public Lcom/loc/bz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bBT(Lcom/loc/n;Lcom/loc/bC;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/loc/n;->bvP(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static bBU(Lcom/loc/n;Ljava/lang/String;)Lcom/loc/bC;
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/loc/bC;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/loc/bC;

    invoke-virtual {p0, v0, v1}, Lcom/loc/n;->bvU(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_e
    return-object v3

    :cond_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bC;

    return-object v0
.end method

.method public static bBV(Lcom/loc/n;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5

    invoke-static {p1, p2}, Lcom/loc/bC;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/loc/bC;

    invoke-virtual {p0, v0, v1}, Lcom/loc/n;->bvU(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
