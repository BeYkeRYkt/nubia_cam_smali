.class public Lu/aly/ah;
.super Lu/aly/ax;
.source "SourceFile"

# interfaces
.implements Lu/aly/P;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5

    .prologue
    .line 18
    invoke-direct {p0}, Lu/aly/ax;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lu/aly/ah;->a(Ljava/lang/String;)Lu/aly/ax;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lu/aly/ah;->bYu(J)Lu/aly/ax;

    .line 22
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1c

    .line 26
    :goto_13
    iget v0, p0, Lu/aly/ah;->d:I

    if-gtz v0, :cond_24

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {p0, v0}, Lu/aly/ah;->a(I)Lu/aly/ax;

    .line 27
    return-void

    .line 23
    :cond_1c
    invoke-direct {p0, p2}, Lu/aly/ah;->bXU(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/ah;->bYp(Ljava/util/Map;)Lu/aly/ax;

    goto :goto_13

    .line 26
    :cond_24
    iget v0, p0, Lu/aly/ah;->d:I

    goto :goto_18
.end method

.method private bXU(Ljava/util/Map;)Ljava/util/HashMap;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 35
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v2, v0

    :cond_f
    :goto_f
    const/16 v0, 0xa

    .line 40
    if-lt v2, v0, :cond_14

    .line 66
    :cond_13
    return-object v4

    .line 40
    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 43
    new-instance v5, Lu/aly/bj;

    invoke-direct {v5}, Lu/aly/bj;-><init>()V

    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 46
    instance-of v6, v1, Ljava/lang/String;

    if-nez v6, :cond_4e

    .line 48
    instance-of v6, v1, Ljava/lang/Long;

    if-nez v6, :cond_54

    .line 50
    instance-of v6, v1, Ljava/lang/Integer;

    if-nez v6, :cond_5e

    .line 52
    instance-of v6, v1, Ljava/lang/Float;

    if-nez v6, :cond_68

    .line 54
    instance-of v6, v1, Ljava/lang/Double;

    if-nez v6, :cond_72

    .line 58
    :goto_3d
    invoke-virtual {v5}, Lu/aly/bj;->k()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 61
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 64
    goto :goto_f

    .line 47
    :cond_4e
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Lu/aly/bj;->b(Ljava/lang/String;)V

    goto :goto_3d

    .line 49
    :cond_54
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lu/aly/bj;->bVO(J)V

    goto :goto_3d

    .line 51
    :cond_5e
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lu/aly/bj;->bVO(J)V

    goto :goto_3d

    .line 53
    :cond_68
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lu/aly/bj;->bVO(J)V

    goto :goto_3d

    .line 55
    :cond_72
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lu/aly/bj;->bVO(J)V

    goto :goto_3d
.end method


# virtual methods
.method public bTF(Lu/aly/bp;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p1}, Lu/aly/bp;->bWB()I

    move-result v0

    if-gtz v0, :cond_e

    move-object v0, v1

    .line 81
    :cond_8
    :goto_8
    if-eqz v0, :cond_2f

    .line 87
    :goto_a
    invoke-virtual {v0, p0}, Lu/aly/be;->bXs(Lu/aly/ax;)V

    .line 88
    return-void

    .line 73
    :cond_e
    invoke-virtual {p1}, Lu/aly/bp;->bWD()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1e

    move-object v0, v1

    goto :goto_8

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/be;

    .line 74
    invoke-virtual {v0}, Lu/aly/be;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_16

    .line 82
    :cond_2f
    new-instance v0, Lu/aly/be;

    invoke-direct {v0}, Lu/aly/be;-><init>()V

    .line 83
    invoke-virtual {v0, p2}, Lu/aly/be;->a(Ljava/lang/String;)Lu/aly/be;

    .line 84
    invoke-virtual {p1, v0}, Lu/aly/bp;->bWC(Lu/aly/be;)V

    goto :goto_a
.end method
