.class public abstract Lcom/android/common/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected aiP:Ljava/util/LinkedList;

.field private aiQ:Z

.field private aiR:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/common/z;->aiP:Ljava/util/LinkedList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/common/z;->aiR:Ljava/util/ArrayList;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/z;->aiQ:Z

    .line 15
    return-void
.end method

.method private asc(F)V
    .registers 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/common/z;->aiR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 63
    iget-object v0, p0, Lcom/android/common/z;->aiR:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/A;

    .line 64
    invoke-interface {v0, p1}, Lcom/android/common/A;->GJ(F)V

    goto :goto_e

    .line 61
    :cond_1e
    return-void
.end method

.method private asd(F)V
    .registers 4

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/common/z;->aiQ:Z

    if-nez v0, :cond_b

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/common/z;->arZ(F)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/z;->aiQ:Z

    .line 43
    :goto_a
    return-void

    .line 48
    :cond_b
    iget-object v0, p0, Lcom/android/common/z;->aiP:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/android/common/z;->aiP:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_a
.end method


# virtual methods
.method public abstract anY(F)F
.end method

.method protected arY(IF)V
    .registers 6

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/common/z;->aiP:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 38
    const/4 v0, 0x0

    :goto_6
    if-ge v0, p1, :cond_14

    .line 39
    iget-object v1, p0, Lcom/android/common/z;->aiP:Ljava/util/LinkedList;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 36
    :cond_14
    return-void
.end method

.method protected arZ(F)V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/common/z;->aiP:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 56
    invoke-virtual {p0, v0, p1}, Lcom/android/common/z;->arY(IF)V

    .line 54
    return-void
.end method

.method public asa(Lcom/android/common/A;)V
    .registers 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/common/z;->aiR:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    .line 25
    iget-object v0, p0, Lcom/android/common/z;->aiR:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 26
    iget-object v0, p0, Lcom/android/common/z;->aiR:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_11
    return-void
.end method

.method public asb(F)V
    .registers 3

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/common/z;->asd(F)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/common/z;->anY(F)F

    move-result v0

    .line 72
    invoke-direct {p0, v0}, Lcom/android/common/z;->asc(F)V

    .line 68
    return-void
.end method
