.class public Lcom/loc/aG;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b:I

.field private final bfW:Ljava/util/LinkedHashMap;

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_13

    iput p1, p0, Lcom/loc/aG;->c:I

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/loc/aG;->bfW:Ljava/util/LinkedHashMap;

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(I)V
    .registers 7

    const/4 v1, 0x0

    :goto_1
    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/loc/aG;->b:I

    if-gez v0, :cond_2b

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/loc/aG;->bfW:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    :goto_33
    iget v0, p0, Lcom/loc/aG;->b:I

    if-le v0, p1, :cond_6b

    iget-object v0, p0, Lcom/loc/aG;->bfW:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v1

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6d

    if-eqz v0, :cond_74

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/loc/aG;->bfW:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcom/loc/aG;->b:I

    invoke-direct {p0, v2, v0}, Lcom/loc/aG;->bzt(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/loc/aG;->b:I

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_2b .. :try_end_61} :catchall_28

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/loc/aG;->bzs(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_66
    :try_start_66
    iget v0, p0, Lcom/loc/aG;->b:I

    if-nez v0, :cond_6

    goto :goto_33

    :cond_6b
    monitor-exit p0

    :goto_6c
    return-void

    :cond_6d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_42

    :cond_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_66 .. :try_end_75} :catchall_28

    goto :goto_6c
.end method

.method private bzt(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6

    invoke-virtual {p0, p1, p2}, Lcom/loc/aG;->bzu(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_7

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Negative size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/loc/aG;->a(I)V

    return-void
.end method

.method public final bzo(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    if-nez p1, :cond_b

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key == null || value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-eqz p2, :cond_2

    monitor-enter p0

    :try_start_e
    iget v0, p0, Lcom/loc/aG;->b:I

    invoke-direct {p0, p1, p2}, Lcom/loc/aG;->bzt(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/loc/aG;->b:I

    iget-object v0, p0, Lcom/loc/aG;->bfW:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_28

    :goto_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_32

    if-nez v0, :cond_35

    :goto_22
    iget v1, p0, Lcom/loc/aG;->c:I

    invoke-direct {p0, v1}, Lcom/loc/aG;->a(I)V

    return-object v0

    :cond_28
    :try_start_28
    iget v1, p0, Lcom/loc/aG;->b:I

    invoke-direct {p0, p1, v0}, Lcom/loc/aG;->bzt(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/loc/aG;->b:I

    goto :goto_1f

    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_32

    throw v0

    :cond_35
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/loc/aG;->bzs(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_22
.end method

.method protected bzp(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public final bzq(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_2e

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/loc/aG;->bfW:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_37

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_39

    invoke-virtual {p0, p1}, Lcom/loc/aG;->bzp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3c

    monitor-enter p0

    :try_start_14
    iget-object v1, p0, Lcom/loc/aG;->bfW:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3d

    iget v2, p0, Lcom/loc/aG;->b:I

    invoke-direct {p0, p1, v0}, Lcom/loc/aG;->bzt(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/loc/aG;->b:I

    :goto_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_43

    if-nez v1, :cond_46

    iget v1, p0, Lcom/loc/aG;->c:I

    invoke-direct {p0, v1}, Lcom/loc/aG;->a(I)V

    return-object v0

    :cond_2e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    :try_start_37
    monitor-exit p0

    return-object v0

    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_39

    throw v0

    :cond_3c
    return-object v1

    :cond_3d
    :try_start_3d
    iget-object v2, p0, Lcom/loc/aG;->bfW:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :catchall_43
    move-exception v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_43

    throw v0

    :cond_46
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/loc/aG;->bzs(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final bzr(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_10

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/loc/aG;->bfW:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19

    :goto_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_23

    if-nez v0, :cond_26

    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :try_start_19
    iget v1, p0, Lcom/loc/aG;->b:I

    invoke-direct {p0, p1, v0}, Lcom/loc/aG;->bzt(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/loc/aG;->b:I

    goto :goto_c

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_23

    throw v0

    :cond_26
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, v3}, Lcom/loc/aG;->bzs(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_f
.end method

.method protected bzs(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    return-void
.end method

.method protected bzu(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    const/4 v0, 0x1

    return v0
.end method
