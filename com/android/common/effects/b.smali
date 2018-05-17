.class public Lcom/android/common/effects/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field Le:Ljava/util/HashMap;

.field private Lf:Z

.field Lg:[[F

.field final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string/jumbo v0, "EffectFactory"

    iput-object v0, p0, Lcom/android/common/effects/b;->TAG:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "EffectFactory"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/effects/b;->Lf:Z

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [[F

    .line 46
    new-array v1, v3, [F

    fill-array-data v1, :array_46

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 47
    new-array v1, v3, [F

    fill-array-data v1, :array_50

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 48
    new-array v1, v3, [F

    fill-array-data v1, :array_5a

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 49
    new-array v1, v3, [F

    fill-array-data v1, :array_64

    aput-object v1, v0, v3

    .line 50
    new-array v1, v3, [F

    fill-array-data v1, :array_6e

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 45
    iput-object v0, p0, Lcom/android/common/effects/b;->Lg:[[F

    .line 40
    return-void

    .line 46
    :array_46
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    .line 47
    :array_50
    .array-data 4
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x3f400000    # 0.75f
    .end array-data

    .line 48
    :array_5a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
    .end array-data

    .line 49
    :array_64
    .array-data 4
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data

    .line 50
    :array_6e
    .array-data 4
        0x3f800000    # 1.0f
        0x3da3d70a    # 0.08f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private IA(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/common/effects/b;->Lf:Z

    if-eqz v0, :cond_a

    .line 55
    const-string/jumbo v0, "EffectFactory"

    invoke-static {v0, p1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_a
    return-void
.end method


# virtual methods
.method public IB(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/common/effects/c;
    .registers 12

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const v3, 0x7f090031

    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "return exist effect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/effects/b;->IA(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/effects/c;

    .line 70
    invoke-virtual {v0, p4, v2}, Lcom/android/common/effects/c;->vn(IZ)V

    .line 71
    return-object v0

    .line 81
    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "generate Effect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/effects/b;->IA(Ljava/lang/String;)V

    .line 82
    const/4 v1, 0x0

    .line 83
    const-string/jumbo v0, "negative-effect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 84
    new-instance v1, Lcom/android/common/effects/a/z;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/z;-><init>(Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "negative-effect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_a9
    :goto_a9
    return-object v1

    .line 86
    :cond_aa
    const-string/jumbo v0, "fill-light"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 87
    new-instance v1, Lcom/android/common/effects/a/p;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/p;-><init>(Landroid/content/Context;)V

    .line 88
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fill-light"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a9

    .line 89
    :cond_d2
    const-string/jumbo v0, "gray-scale"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 90
    new-instance v1, Lcom/android/common/effects/a/k;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/k;-><init>(Landroid/content/Context;)V

    .line 91
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gray-scale"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a9

    .line 92
    :cond_fa
    const-string/jumbo v0, "cross-process"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 93
    new-instance v1, Lcom/android/common/effects/a/o;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/o;-><init>(Landroid/content/Context;)V

    .line 94
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cross-process"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a9

    .line 95
    :cond_122
    const-string/jumbo v0, "temperature"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 96
    new-instance v1, Lcom/android/common/effects/a/d;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/d;-><init>(Landroid/content/Context;)V

    .line 97
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temperature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 98
    :cond_14b
    const-string/jumbo v0, "fish-eye"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_174

    .line 99
    new-instance v1, Lcom/android/common/effects/a/D;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/D;-><init>(Landroid/content/Context;)V

    .line 100
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fish-eye"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 101
    :cond_174
    const-string/jumbo v0, "sketch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19d

    .line 102
    new-instance v1, Lcom/android/common/effects/a/h;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/h;-><init>(Landroid/content/Context;)V

    .line 103
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sketch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 104
    :cond_19d
    const-string/jumbo v0, "sepia"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c6

    .line 105
    new-instance v1, Lcom/android/common/effects/a/s;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/s;-><init>(Landroid/content/Context;)V

    .line 106
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sepia"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 107
    :cond_1c6
    const-string/jumbo v0, "Ocean_effect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ef

    .line 108
    new-instance v1, Lcom/android/common/effects/a/m;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/m;-><init>(Landroid/content/Context;)V

    .line 109
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ocean_effect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 111
    :cond_1ef
    const-string/jumbo v0, "area_effect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_218

    .line 112
    new-instance v1, Lcom/android/common/effects/a/C;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/C;-><init>(Landroid/content/Context;)V

    .line 113
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "area_effect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 114
    :cond_218
    const-string/jumbo v0, "rotate_effect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_241

    .line 115
    new-instance v1, Lcom/android/common/effects/a/e;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/e;-><init>(Landroid/content/Context;)V

    .line 116
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rotate_effect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 117
    :cond_241
    const-string/jumbo v0, "mosaic_effect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26a

    .line 118
    new-instance v1, Lcom/android/common/effects/a/A;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/A;-><init>(Landroid/content/Context;)V

    .line 119
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mosaic_effect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 121
    :cond_26a
    const-string/jumbo v0, "emboss_effect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_293

    .line 122
    new-instance v1, Lcom/android/common/effects/a/v;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/v;-><init>(Landroid/content/Context;)V

    .line 123
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "emboss_effect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 125
    :cond_293
    const-string/jumbo v0, "summer_effect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bc

    .line 126
    new-instance v1, Lcom/android/common/effects/a/u;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/u;-><init>(Landroid/content/Context;)V

    .line 127
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "summer_effect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 129
    :cond_2bc
    const-string/jumbo v0, "newsketch_effect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e5

    .line 130
    new-instance v1, Lcom/android/common/effects/a/r;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/r;-><init>(Landroid/content/Context;)V

    .line 131
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "newsketch_effect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 133
    :cond_2e5
    const-string/jumbo v0, "colorpaint_effect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30e

    .line 134
    new-instance v1, Lcom/android/common/effects/a/l;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/l;-><init>(Landroid/content/Context;)V

    .line 135
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "colorpaint_effect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 137
    :cond_30e
    const-string/jumbo v0, "LOMO_effect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_337

    .line 138
    new-instance v1, Lcom/android/common/effects/a/x;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/x;-><init>(Landroid/content/Context;)V

    .line 139
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LOMO_effect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 141
    :cond_337
    const-string/jumbo v0, "nature"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_360

    .line 142
    new-instance v1, Lcom/android/common/effects/a/B;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/B;-><init>(Landroid/content/Context;)V

    .line 143
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 145
    :cond_360
    const-string/jumbo v0, "miniature"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_389

    .line 146
    new-instance v1, Lcom/android/common/effects/a/g;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/g;-><init>(Landroid/content/Context;)V

    .line 147
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "miniature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 149
    :cond_389
    const-string/jumbo v0, "film_effect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b5

    .line 150
    new-instance v1, Lcom/android/common/effects/a/w;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/w;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {v1, p4, v2}, Lcom/android/common/effects/c;->vn(IZ)V

    .line 152
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "film_effect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 154
    :cond_3b5
    const-string/jumbo v0, "pink"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3de

    .line 155
    new-instance v1, Lcom/android/common/effects/a/a;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/a;-><init>(Landroid/content/Context;)V

    .line 156
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pink"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 158
    :cond_3de
    const-string/jumbo v0, "PrettySweet"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40a

    .line 159
    new-instance v1, Lcom/android/common/effects/a/n;

    const v0, 0x7f090009

    invoke-direct {v1, p1, v0, p3}, Lcom/android/common/effects/a/n;-><init>(Landroid/content/Context;II)V

    .line 160
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PrettySweet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 162
    :cond_40a
    const-string/jumbo v0, "PrettyNature"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_436

    .line 163
    new-instance v1, Lcom/android/common/effects/a/n;

    const v0, 0x7f090007

    invoke-direct {v1, p1, v0, p3}, Lcom/android/common/effects/a/n;-><init>(Landroid/content/Context;II)V

    .line 164
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PrettyNature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 166
    :cond_436
    const-string/jumbo v0, "PrettyBlue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_462

    .line 167
    new-instance v1, Lcom/android/common/effects/a/n;

    const v0, 0x7f090004

    invoke-direct {v1, p1, v0, p3}, Lcom/android/common/effects/a/n;-><init>(Landroid/content/Context;II)V

    .line 168
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PrettyBlue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 170
    :cond_462
    const-string/jumbo v0, "PrettyMoonlight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48e

    .line 171
    new-instance v1, Lcom/android/common/effects/a/n;

    const v0, 0x7f090006

    invoke-direct {v1, p1, v0, p3}, Lcom/android/common/effects/a/n;-><init>(Landroid/content/Context;II)V

    .line 172
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PrettyMoonlight"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 174
    :cond_48e
    const-string/jumbo v0, "PrettyWhiteDew"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ba

    .line 175
    new-instance v1, Lcom/android/common/effects/a/n;

    const v0, 0x7f09000a

    invoke-direct {v1, p1, v0, p3}, Lcom/android/common/effects/a/n;-><init>(Landroid/content/Context;II)V

    .line 176
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PrettyWhiteDew"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 178
    :cond_4ba
    const-string/jumbo v0, "PrettyBeautiful"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e3

    .line 179
    new-instance v1, Lcom/android/common/effects/a/q;

    invoke-direct {v1, p1, p3}, Lcom/android/common/effects/a/q;-><init>(Landroid/content/Context;I)V

    .line 180
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PrettyBeautiful"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 182
    :cond_4e3
    const-string/jumbo v0, "PrettyPink"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50c

    .line 183
    new-instance v1, Lcom/android/common/effects/a/y;

    invoke-direct {v1, p1, p3}, Lcom/android/common/effects/a/y;-><init>(Landroid/content/Context;I)V

    .line 184
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PrettyPink"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 186
    :cond_50c
    const-string/jumbo v0, "PrettyJapan"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_535

    .line 187
    new-instance v1, Lcom/android/common/effects/a/f;

    invoke-direct {v1, p1, p3}, Lcom/android/common/effects/a/f;-><init>(Landroid/content/Context;I)V

    .line 188
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PrettyJapan"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 190
    :cond_535
    const-string/jumbo v0, "BlackRect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_566

    .line 191
    new-instance v1, Lcom/android/common/effects/a/i;

    invoke-direct {v1, p1}, Lcom/android/common/effects/a/i;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 192
    check-cast v0, Lcom/android/common/effects/a/i;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Lcom/android/common/effects/a/i;->Ho(I)V

    .line 193
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BlackRect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 195
    :cond_566
    const-string/jumbo v0, "pragueZero"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_593

    .line 196
    new-instance v1, Lcom/android/common/effects/a/b;

    iget-object v0, p0, Lcom/android/common/effects/b;->Lg:[[F

    aget-object v0, v0, v2

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/android/common/effects/a/b;-><init>(Landroid/content/Context;[FII)V

    .line 197
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pragueZero"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 199
    :cond_593
    const-string/jumbo v0, "pragueOne"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c0

    .line 200
    new-instance v1, Lcom/android/common/effects/a/b;

    iget-object v0, p0, Lcom/android/common/effects/b;->Lg:[[F

    aget-object v0, v0, v4

    invoke-direct {v1, p1, v0, v4, v3}, Lcom/android/common/effects/a/b;-><init>(Landroid/content/Context;[FII)V

    .line 201
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pragueOne"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 203
    :cond_5c0
    const-string/jumbo v0, "pragueTwo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5ed

    .line 204
    new-instance v1, Lcom/android/common/effects/a/b;

    iget-object v0, p0, Lcom/android/common/effects/b;->Lg:[[F

    aget-object v0, v0, v5

    invoke-direct {v1, p1, v0, v5, v3}, Lcom/android/common/effects/a/b;-><init>(Landroid/content/Context;[FII)V

    .line 205
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pragueTwo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 207
    :cond_5ed
    const-string/jumbo v0, "pragueThree"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61d

    .line 208
    new-instance v1, Lcom/android/common/effects/a/b;

    iget-object v0, p0, Lcom/android/common/effects/b;->Lg:[[F

    aget-object v0, v0, v6

    const v2, 0x7f090032

    invoke-direct {v1, p1, v0, v6, v2}, Lcom/android/common/effects/a/b;-><init>(Landroid/content/Context;[FII)V

    .line 209
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pragueThree"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9

    .line 211
    :cond_61d
    const-string/jumbo v0, "pragueFour"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 212
    new-instance v1, Lcom/android/common/effects/a/b;

    iget-object v0, p0, Lcom/android/common/effects/b;->Lg:[[F

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/4 v2, 0x4

    const v3, 0x7f090032

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/android/common/effects/a/b;-><init>(Landroid/content/Context;[FII)V

    .line 213
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pragueFour"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a9
.end method

.method public release()V
    .registers 4

    .prologue
    .line 220
    const-string/jumbo v0, "EffectFactory"

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 222
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 223
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/effects/a;

    invoke-interface {v0}, Lcom/android/common/effects/a;->release()V

    goto :goto_13

    .line 225
    :cond_29
    iget-object v0, p0, Lcom/android/common/effects/b;->Le:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 219
    return-void
.end method
