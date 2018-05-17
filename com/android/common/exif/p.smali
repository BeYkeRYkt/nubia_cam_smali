.class Lcom/android/common/exif/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Sd:[I


# instance fields
.field private final Sa:Ljava/util/Map;

.field private final Sb:I

.field private Sc:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 34
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 35
    const/4 v3, 0x3

    const/4 v4, 0x4

    .line 33
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/common/exif/p;->Sd:[I

    .line 28
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(I)V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/common/exif/p;->Sa:Ljava/util/Map;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/exif/p;->Sc:I

    .line 47
    iput p1, p0, Lcom/android/common/exif/p;->Sb:I

    .line 46
    return-void
.end method

.method protected static RE()[I
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/common/exif/p;->Sd:[I

    return-object v0
.end method


# virtual methods
.method protected RA()[Lcom/android/common/exif/k;
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/common/exif/p;->Sa:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/exif/p;->Sa:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/common/exif/k;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/common/exif/k;

    return-object v0
.end method

.method protected RB()I
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/common/exif/p;->Sa:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected RC()I
    .registers 2

    .prologue
    .line 119
    iget v0, p0, Lcom/android/common/exif/p;->Sc:I

    return v0
.end method

.method protected RD(I)V
    .registers 2

    .prologue
    .line 112
    iput p1, p0, Lcom/android/common/exif/p;->Sc:I

    .line 111
    return-void
.end method

.method protected Rw()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/android/common/exif/p;->Sb:I

    return v0
.end method

.method protected Rx(S)Lcom/android/common/exif/k;
    .registers 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/common/exif/p;->Sa:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/exif/k;

    return-object v0
.end method

.method protected Ry(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;
    .registers 4

    .prologue
    .line 86
    iget v0, p0, Lcom/android/common/exif/p;->Sb:I

    invoke-virtual {p1, v0}, Lcom/android/common/exif/k;->Qg(I)V

    .line 87
    iget-object v0, p0, Lcom/android/common/exif/p;->Sa:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/common/exif/k;->PJ()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/exif/k;

    return-object v0
.end method

.method protected Rz(S)V
    .registers 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/common/exif/p;->Sa:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 128
    if-ne p0, p1, :cond_5

    .line 129
    return v7

    .line 131
    :cond_5
    if-nez p1, :cond_8

    .line 132
    return v2

    .line 134
    :cond_8
    instance-of v0, p1, Lcom/android/common/exif/p;

    if-eqz v0, :cond_50

    .line 135
    check-cast p1, Lcom/android/common/exif/p;

    .line 136
    invoke-virtual {p1}, Lcom/android/common/exif/p;->Rw()I

    move-result v0

    iget v1, p0, Lcom/android/common/exif/p;->Sb:I

    if-ne v0, v1, :cond_50

    invoke-virtual {p1}, Lcom/android/common/exif/p;->RB()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/exif/p;->RB()I

    move-result v1

    if-ne v0, v1, :cond_50

    .line 137
    invoke-virtual {p1}, Lcom/android/common/exif/p;->RA()[Lcom/android/common/exif/k;

    move-result-object v3

    .line 138
    array-length v4, v3

    move v1, v2

    :goto_26
    if-ge v1, v4, :cond_4f

    aget-object v5, v3, v1

    .line 139
    invoke-virtual {v5}, Lcom/android/common/exif/k;->PJ()S

    move-result v0

    invoke-static {v0}, Lcom/android/common/exif/o;->QX(S)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 138
    :cond_34
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26

    .line 142
    :cond_38
    iget-object v0, p0, Lcom/android/common/exif/p;->Sa:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/android/common/exif/k;->PJ()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/exif/k;

    .line 143
    invoke-virtual {v5, v0}, Lcom/android/common/exif/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 144
    return v2

    .line 147
    :cond_4f
    return v7

    .line 150
    :cond_50
    return v2
.end method
