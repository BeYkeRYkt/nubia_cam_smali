.class Lcom/loc/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b:Ljava/util/ArrayList;

.field final synthetic bfj:Lcom/loc/cy;


# direct methods
.method public constructor <init>(Lcom/loc/cy;)V
    .registers 3

    iput-object p1, p0, Lcom/loc/ah;->bfj:Lcom/loc/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ah;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/ah;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private byd(II)V
    .registers 12

    const/4 v8, -0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/loc/ah;->bfj:Lcom/loc/cy;

    invoke-static {v0}, Lcom/loc/cy;->bHa(Lcom/loc/cy;)[[S

    move-result-object v0

    aget-object v0, v0, p1

    aput-short v8, v0, p2

    iget-object v0, p0, Lcom/loc/ah;->bfj:Lcom/loc/cy;

    invoke-static {v0}, Lcom/loc/cy;->bHa(Lcom/loc/cy;)[[S

    move-result-object v0

    aget-object v0, v0, p2

    aput-short v8, v0, p1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_2f
    iget-object v2, p0, Lcom/loc/ah;->bfj:Lcom/loc/cy;

    invoke-static {v2}, Lcom/loc/cy;->bHb(Lcom/loc/cy;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_47

    :cond_3b
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/loc/ah;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_47
    iget-object v2, p0, Lcom/loc/ah;->bfj:Lcom/loc/cy;

    invoke-static {v2}, Lcom/loc/cy;->bHa(Lcom/loc/cy;)[[S

    move-result-object v2

    aget-object v2, v2, p1

    aget-short v2, v2, v0

    if-nez v2, :cond_56

    :cond_53
    :goto_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_56
    iget-object v2, p0, Lcom/loc/ah;->bfj:Lcom/loc/cy;

    invoke-static {v2}, Lcom/loc/cy;->bHa(Lcom/loc/cy;)[[S

    move-result-object v2

    aget-object v2, v2, p2

    aget-short v2, v2, v0

    if-eqz v2, :cond_53

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_6a
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    :goto_89
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3b

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v6, p0, Lcom/loc/ah;->bfj:Lcom/loc/cy;

    invoke-static {v6}, Lcom/loc/cy;->bHa(Lcom/loc/cy;)[[S

    move-result-object v6

    aget-object v6, v6, v5

    aget-short v0, v6, v0

    if-eqz v0, :cond_cc

    add-int/lit8 v0, v2, 0x1

    :goto_a7
    move v2, v0

    goto :goto_89

    :cond_a9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v6, p0, Lcom/loc/ah;->bfj:Lcom/loc/cy;

    invoke-static {v6}, Lcom/loc/cy;->bHa(Lcom/loc/cy;)[[S

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput-short v8, v6, v7

    iget-object v6, p0, Lcom/loc/ah;->bfj:Lcom/loc/cy;

    invoke-static {v6}, Lcom/loc/cy;->bHa(Lcom/loc/cy;)[[S

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v6, v0

    aput-short v8, v0, v5

    goto :goto_7b

    :cond_cc
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v2

    goto :goto_a7
.end method

.method static synthetic bye(Lcom/loc/ah;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/loc/ah;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/ah;->bfj:Lcom/loc/cy;

    invoke-static {v0}, Lcom/loc/cy;->bHb(Lcom/loc/cy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_c
    if-lt v2, v4, :cond_12

    move v3, v1

    :goto_f
    if-lt v3, v4, :cond_2c

    return-void

    :cond_12
    move v0, v1

    :goto_13
    if-lt v0, v4, :cond_19

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_19
    iget-object v3, p0, Lcom/loc/ah;->bfj:Lcom/loc/cy;

    invoke-static {v3}, Lcom/loc/cy;->bHa(Lcom/loc/cy;)[[S

    move-result-object v3

    aget-object v3, v3, v2

    aget-short v3, v3, v0

    if-gtz v3, :cond_28

    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_28
    invoke-direct {p0, v2, v0}, Lcom/loc/ah;->byd(II)V

    goto :goto_25

    :cond_2c
    const/4 v0, 0x1

    move v2, v1

    :goto_2e
    if-lt v2, v4, :cond_36

    :goto_30
    if-nez v0, :cond_5c

    :goto_32
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_f

    :cond_36
    iget-object v5, p0, Lcom/loc/ah;->bfj:Lcom/loc/cy;

    invoke-static {v5}, Lcom/loc/cy;->bHa(Lcom/loc/cy;)[[S

    move-result-object v5

    aget-object v5, v5, v3

    aget-short v5, v5, v2

    if-gtz v5, :cond_51

    iget-object v5, p0, Lcom/loc/ah;->bfj:Lcom/loc/cy;

    invoke-static {v5}, Lcom/loc/cy;->bHa(Lcom/loc/cy;)[[S

    move-result-object v5

    aget-object v5, v5, v3

    aget-short v5, v5, v2

    if-ltz v5, :cond_5a

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_51
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "non visited edge"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    move v0, v1

    goto :goto_30

    :cond_5c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/loc/ah;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32
.end method
