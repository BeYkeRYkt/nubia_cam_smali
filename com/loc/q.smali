.class public abstract Lcom/loc/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bdv:Ljava/net/Proxy;

.field c:I

.field d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x4e20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/loc/q;->c:I

    iput v0, p0, Lcom/loc/q;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/q;->bdv:Ljava/net/Proxy;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/loc/q;->c:I

    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public final bwf(I)V
    .registers 2

    iput p1, p0, Lcom/loc/q;->d:I

    return-void
.end method

.method public final bwg(Ljava/net/Proxy;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/q;->bdv:Ljava/net/Proxy;

    return-void
.end method

.method public abstract c()Ljava/util/Map;
.end method

.method public d()[B
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method g()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/loc/q;->d()[B

    move-result-object v0

    if-nez v0, :cond_b

    :cond_6
    invoke-virtual {p0}, Lcom/loc/q;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    array-length v0, v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/loc/q;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-static {v0}, Lcom/loc/ba;->bAG(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/loc/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_34
    invoke-virtual {p0}, Lcom/loc/q;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method h()[B
    .registers 4

    invoke-virtual {p0}, Lcom/loc/q;->d()[B

    move-result-object v0

    if-nez v0, :cond_15

    :cond_6
    invoke-virtual {p0}, Lcom/loc/q;->c()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/ba;->bAG(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    :goto_14
    return-object v0

    :cond_15
    array-length v1, v0

    if-eqz v1, :cond_6

    goto :goto_14

    :cond_19
    invoke-static {v1}, Lcom/loc/bv;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_14
.end method
