.class public Lcom/loc/cy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b:Ljava/util/ArrayList;

.field private blx:Ljava/util/ArrayList;

.field private bly:[[S

.field private blz:Lcom/loc/ah;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/16 v3, 0x80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/cy;->blx:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/cy;->b:Ljava/util/ArrayList;

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/loc/cy;->bly:[[S

    new-instance v0, Lcom/loc/ah;

    invoke-direct {v0, p0}, Lcom/loc/ah;-><init>(Lcom/loc/cy;)V

    iput-object v0, p0, Lcom/loc/cy;->blz:Lcom/loc/ah;

    return-void
.end method

.method static synthetic bHa(Lcom/loc/cy;)[[S
    .registers 2

    iget-object v0, p0, Lcom/loc/cy;->bly:[[S

    return-object v0
.end method

.method static synthetic bHb(Lcom/loc/cy;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/loc/cy;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 15

    const/4 v11, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/loc/cy;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v1, "\\|"

    invoke-direct {v0, p2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_66

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :goto_1c
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_67

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v6

    new-instance v0, Lcom/loc/aX;

    move-object v1, p0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/loc/aX;-><init>(Lcom/loc/cy;DDII)V

    iget-object v1, p0, Lcom/loc/cy;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/loc/cy;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_6f

    move v3, v9

    :goto_60
    if-lt v3, v8, :cond_78

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_66
    return-void

    :cond_67
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_6f
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Atomic Pos Larger Than MAXN 512!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    move v2, v8

    :goto_79
    iget-object v0, p0, Lcom/loc/cy;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_85

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_60

    :cond_85
    iget-object v0, p0, Lcom/loc/cy;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/aX;

    iget-object v1, p0, Lcom/loc/cy;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/aX;

    invoke-static {v0, v1}, Lcom/loc/aX;->bAv(Lcom/loc/aX;Lcom/loc/aX;)Z

    move-result v0

    if-nez v0, :cond_9f

    :goto_9b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_79

    :cond_9f
    iget-object v0, p0, Lcom/loc/cy;->bly:[[S

    aget-object v0, v0, v3

    aput-short v11, v0, v2

    iget-object v0, p0, Lcom/loc/cy;->bly:[[S

    aget-object v0, v0, v2

    aput-short v11, v0, v3

    goto :goto_9b
.end method

.method public bGZ(DD)Ljava/util/ArrayList;
    .registers 16

    iget-object v0, p0, Lcom/loc/cy;->blz:Lcom/loc/ah;

    invoke-virtual {v0}, Lcom/loc/ah;->a()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/loc/cy;->blz:Lcom/loc/ah;

    invoke-static {v0}, Lcom/loc/ah;->bye(Lcom/loc/ah;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/loc/cy;->blx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_89

    iget-object v0, p0, Lcom/loc/cy;->blx:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_4a

    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_4a

    new-instance v0, Lcom/loc/aX;

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/loc/aX;-><init>(Lcom/loc/cy;DD)V

    const/4 v1, 0x0

    move v3, v1

    :goto_3d
    iget-object v1, p0, Lcom/loc/cy;->blx:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v3, v1, :cond_8b

    iget-object v0, p0, Lcom/loc/cy;->blx:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_4a
    const/4 v0, 0x0

    move v1, v0

    :goto_4c
    iget-object v0, p0, Lcom/loc/cy;->blx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_f7

    return-object v6

    :cond_55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, Lcom/loc/bD;

    invoke-direct {v2, p0}, Lcom/loc/bD;-><init>(Lcom/loc/cy;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_64
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_73

    invoke-virtual {v2}, Lcom/loc/bD;->a()V

    iget-object v0, p0, Lcom/loc/cy;->blx:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_73
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/loc/cy;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/aX;

    invoke-virtual {v2, v0}, Lcom/loc/bD;->bCj(Lcom/loc/aX;)V

    goto :goto_64

    :cond_89
    const/4 v0, 0x0

    return-object v0

    :cond_8b
    iget-object v1, p0, Lcom/loc/cy;->blx:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/bD;

    invoke-virtual {v1}, Lcom/loc/bD;->b()Lcom/loc/aX;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/aX;->bAw(Lcom/loc/aX;Lcom/loc/aX;)D

    move-result-wide v4

    iget v1, v1, Lcom/loc/aX;->e:I

    if-gtz v1, :cond_cd

    const-wide v8, 0x40c3880000000000L    # 10000.0

    cmpg-double v1, v4, v8

    if-gez v1, :cond_c8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpl-double v1, v4, v8

    if-lez v1, :cond_c8

    iget-object v1, p0, Lcom/loc/cy;->blx:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/bD;

    iget-object v2, p0, Lcom/loc/cy;->blx:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/bD;

    invoke-static {v2}, Lcom/loc/bD;->bCl(Lcom/loc/bD;)D

    move-result-wide v4

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    mul-double/2addr v4, v8

    invoke-static {v1, v4, v5}, Lcom/loc/bD;->bCk(Lcom/loc/bD;D)D

    :cond_c8
    :goto_c8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_3d

    :cond_cd
    const-wide v8, 0x40bb580000000000L    # 7000.0

    cmpg-double v1, v4, v8

    if-gez v1, :cond_c8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpl-double v1, v4, v8

    if-lez v1, :cond_c8

    iget-object v1, p0, Lcom/loc/cy;->blx:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/bD;

    iget-object v2, p0, Lcom/loc/cy;->blx:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/bD;

    invoke-static {v2}, Lcom/loc/bD;->bCl(Lcom/loc/bD;)D

    move-result-wide v4

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    mul-double/2addr v4, v8

    invoke-static {v1, v4, v5}, Lcom/loc/bD;->bCk(Lcom/loc/bD;D)D

    goto :goto_c8

    :cond_f7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_112

    iget-object v0, p0, Lcom/loc/cy;->blx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bD;

    invoke-virtual {v0}, Lcom/loc/bD;->b()Lcom/loc/aX;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_4c

    :cond_112
    return-object v6
.end method
