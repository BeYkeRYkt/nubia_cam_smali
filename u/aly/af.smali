.class public Lu/aly/af;
.super Lu/aly/ax;
.source "SourceFile"

# interfaces
.implements Lu/aly/P;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;JI)V
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lu/aly/ax;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Lu/aly/af;->a(Ljava/lang/String;)Lu/aly/ax;

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lu/aly/af;->bYu(J)Lu/aly/ax;

    .line 23
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_27

    .line 27
    :goto_15
    if-gtz p5, :cond_18

    move p5, v0

    :cond_18
    invoke-virtual {p0, p5}, Lu/aly/af;->a(I)Lu/aly/ax;

    const-wide/16 v2, 0x0

    .line 29
    cmp-long v2, p3, v2

    if-gtz v2, :cond_2f

    :goto_21
    if-nez v0, :cond_26

    .line 30
    invoke-virtual {p0, p3, p4}, Lu/aly/af;->a(J)Lu/aly/ax;

    .line 32
    :cond_26
    return-void

    .line 24
    :cond_27
    invoke-direct {p0, p2}, Lu/aly/af;->bTN(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Lu/aly/af;->bYp(Ljava/util/Map;)Lu/aly/ax;

    goto :goto_15

    :cond_2f
    move v0, v1

    .line 29
    goto :goto_21
.end method

.method private bTN(Ljava/util/Map;)Ljava/util/HashMap;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 40
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v2, v0

    :cond_f
    :goto_f
    const/16 v0, 0xa

    .line 45
    if-lt v2, v0, :cond_14

    .line 72
    :cond_13
    return-object v4

    .line 45
    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 46
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 48
    new-instance v5, Lu/aly/bj;

    invoke-direct {v5}, Lu/aly/bj;-><init>()V

    .line 50
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 51
    instance-of v6, v1, Ljava/lang/String;

    if-nez v6, :cond_4e

    .line 53
    instance-of v6, v1, Ljava/lang/Long;

    if-nez v6, :cond_54

    .line 55
    instance-of v6, v1, Ljava/lang/Integer;

    if-nez v6, :cond_5e

    .line 57
    instance-of v6, v1, Ljava/lang/Float;

    if-nez v6, :cond_68

    .line 59
    instance-of v6, v1, Ljava/lang/Double;

    if-nez v6, :cond_72

    .line 63
    :goto_3d
    invoke-virtual {v5}, Lu/aly/bj;->k()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 67
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 70
    goto :goto_f

    .line 52
    :cond_4e
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Lu/aly/bj;->b(Ljava/lang/String;)V

    goto :goto_3d

    .line 54
    :cond_54
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lu/aly/bj;->bVO(J)V

    goto :goto_3d

    .line 56
    :cond_5e
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lu/aly/bj;->bVO(J)V

    goto :goto_3d

    .line 58
    :cond_68
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lu/aly/bj;->bVO(J)V

    goto :goto_3d

    .line 60
    :cond_72
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lu/aly/bj;->bVO(J)V

    goto :goto_3d
.end method

.method public static bTO(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lu/aly/ae;
    .registers 4

    .prologue
    .line 76
    new-instance v0, Lu/aly/ae;

    invoke-direct {v0}, Lu/aly/ae;-><init>()V

    .line 77
    iput-object p0, v0, Lu/aly/ae;->b:Ljava/lang/String;

    .line 78
    iput-object p1, v0, Lu/aly/ae;->c:Ljava/lang/String;

    .line 79
    iput-object p2, v0, Lu/aly/ae;->d:Ljava/util/Map;

    .line 81
    return-object v0
.end method

.method public static bTP(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bTF(Lu/aly/bp;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-virtual {p1}, Lu/aly/bp;->bWB()I

    move-result v0

    if-gtz v0, :cond_e

    move-object v0, v1

    .line 100
    :cond_8
    :goto_8
    if-eqz v0, :cond_2f

    .line 106
    :goto_a
    invoke-virtual {v0, p0}, Lu/aly/be;->bXo(Lu/aly/ax;)V

    .line 107
    return-void

    .line 92
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

    .line 93
    invoke-virtual {v0}, Lu/aly/be;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_16

    .line 101
    :cond_2f
    new-instance v0, Lu/aly/be;

    invoke-direct {v0}, Lu/aly/be;-><init>()V

    .line 102
    invoke-virtual {v0, p2}, Lu/aly/be;->a(Ljava/lang/String;)Lu/aly/be;

    .line 103
    invoke-virtual {p1, v0}, Lu/aly/bp;->bWC(Lu/aly/be;)V

    goto :goto_a
.end method
