.class public final Lu/aly/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final buo:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    new-instance v0, Lu/aly/cS;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/cS;-><init>(Lu/aly/bz;)V

    sput-object v0, Lu/aly/p;->buo:Ljava/util/Comparator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B[B)I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 113
    array-length v0, p0

    array-length v2, p1

    invoke-static {v0, v2}, Lu/aly/p;->bRx(II)I

    move-result v0

    .line 114
    if-nez v0, :cond_e

    move v0, v1

    .line 117
    :goto_a
    array-length v2, p0

    if-lt v0, v2, :cond_f

    .line 123
    return v1

    .line 115
    :cond_e
    return v0

    .line 118
    :cond_f
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    invoke-static {v2, v3}, Lu/aly/p;->bRw(BB)I

    move-result v2

    .line 119
    if-nez v2, :cond_1c

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 120
    :cond_1c
    return v2
.end method

.method public static bRA(Ljava/util/Set;Ljava/util/Set;)I
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 145
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v0, v1}, Lu/aly/p;->bRx(II)I

    move-result v0

    .line 146
    if-nez v0, :cond_32

    .line 149
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lu/aly/p;->buo:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 150
    invoke-interface {v0, p0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 151
    new-instance v1, Ljava/util/TreeSet;

    sget-object v2, Lu/aly/p;->buo:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 152
    invoke-interface {v1, p1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 154
    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 155
    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 158
    :cond_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_33

    .line 165
    :cond_31
    return v5

    .line 147
    :cond_32
    return v0

    .line 158
    :cond_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 159
    sget-object v2, Lu/aly/p;->buo:Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 160
    if-eqz v2, :cond_2b

    .line 161
    return v2
.end method

.method public static bRB(Ljava/util/Map;Ljava/util/Map;)I
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 169
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v0, v1}, Lu/aly/p;->bRx(II)I

    move-result v0

    .line 170
    if-nez v0, :cond_3a

    .line 175
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lu/aly/p;->buo:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 176
    invoke-interface {v0, p0}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 177
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 178
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lu/aly/p;->buo:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 179
    invoke-interface {v0, p1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 180
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 183
    :cond_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 196
    :cond_39
    return v7

    .line 171
    :cond_3a
    return v0

    .line 183
    :cond_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 184
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 185
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 186
    sget-object v4, Lu/aly/p;->buo:Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 187
    if-nez v4, :cond_6e

    .line 190
    sget-object v4, Lu/aly/p;->buo:Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 191
    if-eqz v0, :cond_33

    .line 192
    return v0

    .line 188
    :cond_6e
    return v4
.end method

.method public static bRC(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V
    .registers 8

    .prologue
    .line 225
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 227
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 228
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int v3, v0, v1

    .line 229
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v1, v0

    .line 230
    sub-int v0, v1, v3

    const/16 v2, 0x80

    if-gt v0, v2, :cond_20

    move v0, v1

    :goto_1a
    move v2, v3

    .line 232
    :goto_1b
    if-lt v2, v0, :cond_23

    .line 238
    if-ne v1, v0, :cond_38

    .line 241
    :goto_1f
    return-void

    .line 230
    :cond_20
    add-int/lit16 v0, v3, 0x80

    goto :goto_1a

    .line 233
    :cond_23
    if-gt v2, v3, :cond_31

    .line 236
    :goto_25
    aget-byte v5, v4, v2

    invoke-static {v5}, Lu/aly/p;->bRD(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_31
    const-string/jumbo v5, " "

    .line 234
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_38
    const-string/jumbo v0, "..."

    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f
.end method

.method public static bRD(B)Ljava/lang/String;
    .registers 3

    .prologue
    .line 244
    or-int/lit16 v0, p0, 0x100

    and-int/lit16 v0, v0, 0x1ff

    .line 245
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bRw(BB)I
    .registers 3

    .prologue
    .line 59
    if-lt p0, p1, :cond_6

    .line 61
    if-lt p1, p0, :cond_8

    const/4 v0, 0x0

    .line 64
    return v0

    :cond_6
    const/4 v0, -0x1

    .line 60
    return v0

    :cond_8
    const/4 v0, 0x1

    .line 62
    return v0
.end method

.method public static bRx(II)I
    .registers 3

    .prologue
    .line 79
    if-lt p0, p1, :cond_6

    .line 81
    if-lt p1, p0, :cond_8

    const/4 v0, 0x0

    .line 84
    return v0

    :cond_6
    const/4 v0, -0x1

    .line 80
    return v0

    :cond_8
    const/4 v0, 0x1

    .line 82
    return v0
.end method

.method public static bRy(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 3

    .prologue
    .line 127
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static bRz(Ljava/util/List;Ljava/util/List;)I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Lu/aly/p;->bRx(II)I

    move-result v0

    .line 132
    if-nez v0, :cond_17

    move v0, v1

    .line 135
    :goto_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_18

    .line 141
    return v1

    .line 133
    :cond_17
    return v0

    .line 136
    :cond_18
    sget-object v2, Lu/aly/p;->buo:Ljava/util/Comparator;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 137
    if-nez v2, :cond_2b

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 138
    :cond_2b
    return v2
.end method
