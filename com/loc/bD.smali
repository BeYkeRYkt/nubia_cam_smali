.class Lcom/loc/bD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private b:Ljava/util/ArrayList;

.field private bhK:Ljava/util/ArrayList;

.field final synthetic bhL:Lcom/loc/cy;

.field private d:D

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/loc/cy;)V
    .registers 6

    const-wide/16 v2, 0x0

    iput-object p1, p0, Lcom/loc/bD;->bhL:Lcom/loc/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bD;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bD;->bhK:Ljava/util/ArrayList;

    iput-wide v2, p0, Lcom/loc/bD;->d:D

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/bD;->e:Ljava/lang/String;

    iput-wide v2, p0, Lcom/loc/bD;->d:D

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/bD;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic bCk(Lcom/loc/bD;D)D
    .registers 4

    iput-wide p1, p0, Lcom/loc/bD;->d:D

    return-wide p1
.end method

.method static synthetic bCl(Lcom/loc/bD;)D
    .registers 3

    iget-wide v0, p0, Lcom/loc/bD;->d:D

    return-wide v0
.end method


# virtual methods
.method public a()V
    .registers 13

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    const-wide v8, 0x3fb999999999999aL    # 0.1

    iget-object v0, p0, Lcom/loc/bD;->bhK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v4, v0

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/loc/bD;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v0

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2c

    mul-double v0, v2, v10

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/loc/bD;->d:D

    iget-wide v0, p0, Lcom/loc/bD;->d:D

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    add-double/2addr v4, v8

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/loc/bD;->d:D

    return-void

    :cond_2c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/aX;

    iget v0, v0, Lcom/loc/aX;->e:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3c

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_39
    add-double/2addr v0, v2

    move-wide v2, v0

    goto :goto_17

    :cond_3c
    const-wide v0, 0x3fe3333333333333L    # 0.6

    goto :goto_39
.end method

.method public b()Lcom/loc/aX;
    .registers 14

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/loc/bD;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_26

    const/4 v10, 0x3

    :goto_10
    iget-object v6, p0, Lcom/loc/bD;->bhK:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_28

    iget-object v0, p0, Lcom/loc/bD;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a6

    const/4 v0, 0x0

    return-object v0

    :cond_26
    const/4 v10, 0x0

    goto :goto_10

    :cond_28
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/loc/bD;->bhK:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-wide v8, v4

    move-wide v4, v0

    :goto_35
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_76

    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_91

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_55
    iget-object v1, p0, Lcom/loc/bD;->bhK:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x1

    if-eq v1, v6, :cond_9d

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_a0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_a3

    move v6, v0

    :goto_67
    div-double/2addr v2, v4

    div-double v4, v8, v4

    new-instance v0, Lcom/loc/aX;

    iget-object v1, p0, Lcom/loc/bD;->bhL:Lcom/loc/cy;

    iget-object v7, p0, Lcom/loc/bD;->e:Ljava/lang/String;

    iget-wide v8, p0, Lcom/loc/bD;->d:D

    invoke-direct/range {v0 .. v10}, Lcom/loc/aX;-><init>(Lcom/loc/cy;DDILjava/lang/String;DI)V

    return-object v0

    :cond_76
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/aX;

    iget v1, v0, Lcom/loc/aX;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v6, v0, Lcom/loc/aX;->b:D

    add-double/2addr v6, v8

    iget-wide v0, v0, Lcom/loc/aX;->a:D

    add-double/2addr v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v4

    move-wide v4, v0

    move-wide v8, v6

    goto :goto_35

    :cond_91
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_55

    :cond_9d
    const/16 v6, 0x1f4

    goto :goto_67

    :cond_a0
    const/16 v6, 0x12c

    goto :goto_67

    :cond_a3
    const/16 v6, 0x1e

    goto :goto_67

    :cond_a6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/loc/aX;

    iget v0, v6, Lcom/loc/aX;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d7

    iget v0, v6, Lcom/loc/aX;->c:I

    if-gtz v0, :cond_ea

    move v0, v7

    :goto_b7
    iget-wide v2, v6, Lcom/loc/aX;->b:D

    const-wide/16 v4, 0x0

    add-double/2addr v4, v2

    iget-wide v2, v6, Lcom/loc/aX;->a:D

    const-wide/16 v6, 0x0

    add-double/2addr v2, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/16 v1, 0x1388

    if-gt v0, v1, :cond_ed

    move v6, v0

    :goto_c8
    div-double/2addr v2, v8

    div-double/2addr v4, v8

    new-instance v0, Lcom/loc/aX;

    iget-object v1, p0, Lcom/loc/bD;->bhL:Lcom/loc/cy;

    iget-object v7, p0, Lcom/loc/bD;->e:Ljava/lang/String;

    iget-wide v8, p0, Lcom/loc/bD;->d:D

    const/4 v10, 0x2

    invoke-direct/range {v0 .. v10}, Lcom/loc/aX;-><init>(Lcom/loc/cy;DDILjava/lang/String;DI)V

    return-object v0

    :cond_d7
    iget-wide v2, v6, Lcom/loc/aX;->a:D

    iget-wide v4, v6, Lcom/loc/aX;->b:D

    new-instance v0, Lcom/loc/aX;

    iget-object v1, p0, Lcom/loc/bD;->bhL:Lcom/loc/cy;

    iget v6, v6, Lcom/loc/aX;->c:I

    iget-object v7, p0, Lcom/loc/bD;->e:Ljava/lang/String;

    iget-wide v8, p0, Lcom/loc/bD;->d:D

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/loc/aX;-><init>(Lcom/loc/cy;DDILjava/lang/String;DI)V

    return-object v0

    :cond_ea
    iget v0, v6, Lcom/loc/aX;->c:I

    goto :goto_b7

    :cond_ed
    const/16 v6, 0x1388

    goto :goto_c8
.end method

.method public bCi(Lcom/loc/bD;)I
    .registers 8

    const-wide/16 v4, 0x0

    iget-wide v0, p1, Lcom/loc/bD;->d:D

    iget-wide v2, p0, Lcom/loc/bD;->d:D

    sub-double/2addr v0, v2

    cmpl-double v2, v0, v4

    if-lez v2, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    cmpl-double v0, v0, v4

    if-nez v0, :cond_13

    const/4 v0, 0x0

    goto :goto_c

    :cond_13
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public bCj(Lcom/loc/aX;)V
    .registers 4

    iget v0, p1, Lcom/loc/aX;->e:I

    if-eqz v0, :cond_14

    iget v0, p1, Lcom/loc/aX;->e:I

    if-gtz v0, :cond_1a

    :goto_8
    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/loc/bD;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/loc/bD;->bhK:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1a
    iget-object v0, p0, Lcom/loc/bD;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_20
    iget-object v0, p1, Lcom/loc/aX;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/bD;->e:Ljava/lang/String;

    goto :goto_13
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/loc/bD;

    invoke-virtual {p0, p1}, Lcom/loc/bD;->bCi(Lcom/loc/bD;)I

    move-result v0

    return v0
.end method
