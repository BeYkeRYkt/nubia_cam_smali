.class public Lcom/loc/bS;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field private bje:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/loc/bS;->bje:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/loc/bS;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/util/List;)Z
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/loc/bS;->b()Z

    move-result v0

    if-nez v0, :cond_a

    if-nez p1, :cond_b

    :cond_9
    return v2

    :cond_a
    return v2

    :cond_b
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/loc/bS;->bje:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_1b
    if-nez v3, :cond_1e

    :cond_1d
    return v2

    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    if-nez v4, :cond_46

    :cond_36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1b

    :cond_46
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/fence/Fence;

    iget-object v5, v1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    :cond_5a
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    :goto_5e
    move v2, v1

    goto :goto_34

    :cond_60
    invoke-direct {p0, v1}, Lcom/loc/bS;->bDJ(Lcom/amap/api/fence/Fence;)Z

    move-result v1

    if-nez v1, :cond_5a

    move v1, v2

    goto :goto_5e
.end method

.method private b()Z
    .registers 2

    iget-object v0, p0, Lcom/loc/bS;->bje:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private bDD(Landroid/app/PendingIntent;Lcom/amap/api/fence/Fence;I)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "fenceid"

    iget-object v3, p2, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "event"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_1b
    iget-object v1, p0, Lcom/loc/bS;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_21} :catch_22

    :goto_21
    return-void

    :catch_22
    move-exception v0

    const-string/jumbo v1, "FenceManager"

    const-string/jumbo v2, "fcIntent"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method private bDH(Landroid/app/PendingIntent;Ljava/util/List;)Z
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/loc/bS;->b()Z

    move-result v0

    if-nez v0, :cond_a

    if-nez p2, :cond_b

    :cond_9
    return v1

    :cond_a
    return v1

    :cond_b
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/loc/bS;->bje:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/loc/bS;->bje:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    if-nez v2, :cond_29

    :cond_27
    return v1

    :cond_28
    return v1

    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/fence/Fence;

    iget-object v3, v0, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    :cond_3d
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    :goto_41
    move v1, v0

    goto :goto_25

    :cond_43
    invoke-direct {p0, v0}, Lcom/loc/bS;->bDJ(Lcom/amap/api/fence/Fence;)Z

    move-result v0

    if-nez v0, :cond_3d

    move v0, v1

    goto :goto_41
.end method

.method private bDJ(Lcom/amap/api/fence/Fence;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/amap/api/fence/Fence;->b()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1e

    invoke-virtual {p1}, Lcom/amap/api/fence/Fence;->b()J

    move-result-wide v2

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1c

    move v2, v0

    :goto_19
    if-nez v2, :cond_1e

    :goto_1b
    return v0

    :cond_1c
    move v2, v1

    goto :goto_19

    :cond_1e
    move v0, v1

    goto :goto_1b
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/loc/bS;->bje:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public bDE(Lcom/amap/api/fence/Fence;Landroid/app/PendingIntent;)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_5

    :cond_4
    return v3

    :cond_5
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    iget v0, p1, Lcom/amap/api/fence/Fence;->bdb:F

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_19

    return v3

    :cond_18
    return v3

    :cond_19
    iget v0, p1, Lcom/amap/api/fence/Fence;->bdb:F

    const/high16 v2, 0x447a0000    # 1000.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_22

    return v3

    :cond_22
    invoke-direct {p0}, Lcom/loc/bS;->b()Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_28
    invoke-virtual {p1}, Lcom/amap/api/fence/Fence;->a()I

    move-result v0

    if-eqz v0, :cond_67

    const/4 v0, 0x7

    invoke-virtual {p1}, Lcom/amap/api/fence/Fence;->a()I

    move-result v2

    if-gt v2, v0, :cond_68

    iget-object v0, p0, Lcom/loc/bS;->bje:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_40
    if-nez v4, :cond_69

    :cond_42
    const/16 v0, 0x14

    if-gt v2, v0, :cond_82

    const/4 v0, -0x1

    iput v0, p1, Lcom/amap/api/fence/Fence;->f:I

    invoke-direct {p0}, Lcom/loc/bS;->b()Z

    move-result v0

    if-eqz v0, :cond_83

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/loc/bS;->bje:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5c
    const/4 v0, 0x1

    return v0

    :cond_5e
    iget-object v0, p0, Lcom/loc/bS;->bje:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    return v3

    :cond_67
    return v3

    :cond_68
    return v3

    :cond_69
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_40

    :cond_82
    return v3

    :cond_83
    iget-object v0, p0, Lcom/loc/bS;->bje:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    :goto_90
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a1

    if-nez v2, :cond_b4

    :goto_98
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/loc/bS;->bje:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5c

    :cond_a1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/fence/Fence;

    iget-object v4, v1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    iget-object v5, p1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b2

    move-object v1, v2

    :cond_b2
    move-object v2, v1

    goto :goto_90

    :cond_b4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_98
.end method

.method public bDF(Landroid/app/PendingIntent;)Z
    .registers 5

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :cond_3
    return v1

    :cond_4
    iget-object v0, p0, Lcom/loc/bS;->bje:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/loc/bS;->bje:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-direct {p0, v1}, Lcom/loc/bS;->a(Ljava/util/List;)Z

    move-result v0

    return v0

    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/fence/Fence;

    iget-object v0, v0, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d
.end method

.method public bDG(Landroid/app/PendingIntent;Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :cond_3
    return v1

    :cond_4
    iget-object v0, p0, Lcom/loc/bS;->bje:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v0}, Lcom/loc/bS;->bDH(Landroid/app/PendingIntent;Ljava/util/List;)Z

    move-result v0

    return v0

    :cond_1f
    return v1
.end method

.method public bDI(Lcom/amap/api/location/AMapLocation;)V
    .registers 10

    invoke-direct {p0}, Lcom/loc/bS;->b()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/loc/bS;->bje:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    if-nez v4, :cond_14

    :cond_12
    return-void

    :cond_13
    return-void

    :cond_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2a
    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/fence/Fence;

    invoke-direct {p0, v1}, Lcom/loc/bS;->bDJ(Lcom/amap/api/fence/Fence;)Z

    move-result v2

    if-nez v2, :cond_2a

    const/4 v2, 0x4

    new-array v2, v2, [D

    const/4 v3, 0x0

    iget-wide v6, v1, Lcom/amap/api/fence/Fence;->d:D

    aput-wide v6, v2, v3

    const/4 v3, 0x1

    iget-wide v6, v1, Lcom/amap/api/fence/Fence;->c:D

    aput-wide v6, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v6

    aput-wide v6, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v6

    aput-wide v6, v2, v3

    invoke-static {v2}, Lcom/loc/X;->bxg([D)F

    move-result v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v3

    const/high16 v6, 0x43fa0000    # 500.0f

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_b3

    iget v3, v1, Lcom/amap/api/fence/Fence;->bdb:F

    const/high16 v6, 0x43fa0000    # 500.0f

    add-float/2addr v3, v6

    sub-float/2addr v2, v3

    move v3, v2

    :goto_6c
    const/4 v2, 0x0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_bb

    iget v3, v1, Lcom/amap/api/fence/Fence;->f:I

    if-nez v3, :cond_b9

    :goto_76
    const/4 v3, 0x0

    iput v3, v1, Lcom/amap/api/fence/Fence;->f:I

    :goto_79
    if-nez v2, :cond_c6

    invoke-virtual {v1}, Lcom/amap/api/fence/Fence;->a()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2a

    iget-wide v2, v1, Lcom/amap/api/fence/Fence;->g:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gtz v2, :cond_101

    const/4 v2, 0x1

    :goto_8d
    if-nez v2, :cond_2a

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v2

    iget-wide v6, v1, Lcom/amap/api/fence/Fence;->g:J

    sub-long/2addr v2, v6

    invoke-virtual {v1}, Lcom/amap/api/fence/Fence;->c()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-gtz v2, :cond_103

    const/4 v2, 0x1

    :goto_9f
    if-nez v2, :cond_2a

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/api/fence/Fence;->g:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    const/4 v3, 0x4

    invoke-direct {p0, v2, v1, v3}, Lcom/loc/bS;->bDD(Landroid/app/PendingIntent;Lcom/amap/api/fence/Fence;I)V

    goto/16 :goto_2a

    :cond_b3
    iget v6, v1, Lcom/amap/api/fence/Fence;->bdb:F

    add-float/2addr v3, v6

    sub-float/2addr v2, v3

    move v3, v2

    goto :goto_6c

    :cond_b9
    const/4 v2, 0x1

    goto :goto_76

    :cond_bb
    iget v3, v1, Lcom/amap/api/fence/Fence;->f:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_c4

    :goto_c0
    const/4 v3, 0x1

    iput v3, v1, Lcom/amap/api/fence/Fence;->f:I

    goto :goto_79

    :cond_c4
    const/4 v2, 0x1

    goto :goto_c0

    :cond_c6
    iget v2, v1, Lcom/amap/api/fence/Fence;->f:I

    packed-switch v2, :pswitch_data_106

    goto/16 :goto_2a

    :pswitch_cd
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/amap/api/fence/Fence;->g:J

    invoke-virtual {v1}, Lcom/amap/api/fence/Fence;->a()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v1, v3}, Lcom/loc/bS;->bDD(Landroid/app/PendingIntent;Lcom/amap/api/fence/Fence;I)V

    goto/16 :goto_2a

    :pswitch_e6
    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/api/fence/Fence;->g:J

    invoke-virtual {v1}, Lcom/amap/api/fence/Fence;->a()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/loc/bS;->bDD(Landroid/app/PendingIntent;Lcom/amap/api/fence/Fence;I)V

    goto/16 :goto_2a

    :cond_101
    const/4 v2, 0x0

    goto :goto_8d

    :cond_103
    const/4 v2, 0x0

    goto :goto_9f

    nop

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_cd
        :pswitch_e6
    .end packed-switch
.end method
