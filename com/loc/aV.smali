.class public Lcom/loc/aV;
.super Lcom/loc/aG;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Lcom/loc/aG;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bAr(Ljava/lang/String;Lcom/loc/cb;)I
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    :try_start_3
    invoke-virtual {p2}, Lcom/loc/cb;->g()J
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_9

    move-result-wide v0

    long-to-int v0, v0

    :cond_8
    :goto_8
    return v0

    :catch_9
    move-exception v1

    const-string/jumbo v2, "OfflineFileCache"

    const-string/jumbo v3, "sizeOf"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method protected bAs(ZLjava/lang/String;Lcom/loc/cb;Lcom/loc/cb;)V
    .registers 8

    if-nez p3, :cond_6

    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loc/aG;->bzs(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_6
    :try_start_6
    invoke-virtual {p3}, Lcom/loc/cb;->b()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_2

    :catch_a
    move-exception v0

    const-string/jumbo v1, "OfflineFileCache"

    const-string/jumbo v2, "entryRemoved"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected bridge synthetic bzs(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/loc/cb;

    check-cast p4, Lcom/loc/cb;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/loc/aV;->bAs(ZLjava/lang/String;Lcom/loc/cb;Lcom/loc/cb;)V

    return-void
.end method

.method protected bridge synthetic bzu(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/loc/cb;

    invoke-virtual {p0, p1, p2}, Lcom/loc/aV;->bAr(Ljava/lang/String;Lcom/loc/cb;)I

    move-result v0

    return v0
.end method
