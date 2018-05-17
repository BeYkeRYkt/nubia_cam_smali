.class public abstract Lu/aly/cO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private bzW:Lu/aly/ba;

.field private final c:Ljava/lang/String;

.field private d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 12
    iput v0, p0, Lu/aly/cO;->a:I

    const/16 v0, 0x14

    .line 13
    iput v0, p0, Lu/aly/cO;->b:I

    .line 19
    iput-object p1, p0, Lu/aly/cO;->c:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private g()Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 39
    iget-object v3, p0, Lu/aly/cO;->bzW:Lu/aly/ba;

    .line 41
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lu/aly/ba;->c()Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_a
    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Lu/aly/ba;->j()I

    move-result v1

    .line 43
    :goto_10
    invoke-virtual {p0}, Lu/aly/cO;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lu/aly/cO;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    if-nez v4, :cond_1d

    .line 73
    :cond_1a
    return v2

    :cond_1b
    move v1, v2

    .line 42
    goto :goto_10

    .line 45
    :cond_1d
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 46
    if-eqz v3, :cond_62

    .line 49
    :goto_25
    invoke-virtual {v3, v4}, Lu/aly/ba;->a(Ljava/lang/String;)Lu/aly/ba;

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lu/aly/ba;->a(J)Lu/aly/ba;

    .line 51
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Lu/aly/ba;->a(I)Lu/aly/ba;

    .line 53
    new-instance v1, Lu/aly/az;

    invoke-direct {v1}, Lu/aly/az;-><init>()V

    .line 54
    iget-object v5, p0, Lu/aly/cO;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lu/aly/az;->a(Ljava/lang/String;)Lu/aly/az;

    .line 55
    invoke-virtual {v1, v4}, Lu/aly/az;->bUj(Ljava/lang/String;)Lu/aly/az;

    .line 56
    invoke-virtual {v1, v0}, Lu/aly/az;->b(Ljava/lang/String;)Lu/aly/az;

    .line 57
    invoke-virtual {v3}, Lu/aly/ba;->f()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lu/aly/az;->a(J)Lu/aly/az;

    .line 59
    iget-object v0, p0, Lu/aly/cO;->d:Ljava/util/List;

    if-eqz v0, :cond_68

    .line 63
    :goto_4f
    iget-object v0, p0, Lu/aly/cO;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lu/aly/cO;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_71

    .line 69
    :goto_5e
    iput-object v3, p0, Lu/aly/cO;->bzW:Lu/aly/ba;

    .line 70
    const/4 v0, 0x1

    return v0

    .line 47
    :cond_62
    new-instance v3, Lu/aly/ba;

    invoke-direct {v3}, Lu/aly/ba;-><init>()V

    goto :goto_25

    .line 60
    :cond_68
    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lu/aly/cO;->d:Ljava/util/List;

    goto :goto_4f

    .line 66
    :cond_71
    iget-object v0, p0, Lu/aly/cO;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5e
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 93
    if-eqz p1, :cond_26

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_27

    const-string/jumbo v1, "0"

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string/jumbo v1, "unknown"

    .line 107
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 111
    return-object v0

    .line 94
    :cond_26
    return-object v3

    .line 100
    :cond_27
    return-object v3

    .line 104
    :cond_28
    return-object v3

    .line 108
    :cond_29
    return-object v3
.end method

.method public a(Ljava/util/List;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lu/aly/cO;->d:Ljava/util/List;

    .line 90
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lu/aly/cO;->g()Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lu/aly/cO;->c:Ljava/lang/String;

    return-object v0
.end method

.method public bZd(Lu/aly/bb;)V
    .registers 6

    .prologue
    .line 117
    invoke-virtual {p1}, Lu/aly/bb;->d()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lu/aly/cO;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ba;

    iput-object v0, p0, Lu/aly/cO;->bzW:Lu/aly/ba;

    .line 119
    invoke-virtual {p1}, Lu/aly/bb;->j()Ljava/util/List;

    move-result-object v0

    .line 121
    if-nez v0, :cond_15

    .line 132
    :cond_14
    return-void

    .line 121
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_14

    .line 122
    iget-object v1, p0, Lu/aly/cO;->d:Ljava/util/List;

    if-eqz v1, :cond_3f

    .line 126
    :goto_1f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/az;

    .line 127
    iget-object v2, p0, Lu/aly/cO;->c:Ljava/lang/String;

    iget-object v3, v0, Lu/aly/az;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 128
    iget-object v2, p0, Lu/aly/cO;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 123
    :cond_3f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lu/aly/cO;->d:Ljava/util/List;

    goto :goto_1f
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 31
    iget-object v0, p0, Lu/aly/cO;->bzW:Lu/aly/ba;

    if-nez v0, :cond_6

    .line 35
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 31
    :cond_6
    iget-object v0, p0, Lu/aly/cO;->bzW:Lu/aly/ba;

    invoke-virtual {v0}, Lu/aly/ba;->j()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_4

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public d()Lu/aly/ba;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lu/aly/cO;->bzW:Lu/aly/ba;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lu/aly/cO;->d:Ljava/util/List;

    return-object v0
.end method

.method public abstract f()Ljava/lang/String;
.end method
