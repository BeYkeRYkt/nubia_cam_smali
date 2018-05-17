.class public Lu/aly/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/A;


# static fields
.field private static bvf:Lu/aly/E;


# instance fields
.field private a:Z

.field private b:I

.field private bvc:F

.field private bvd:F

.field private bve:Landroid/content/Context;

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lu/aly/E;->bvf:Lu/aly/E;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/E;->a:Z

    .line 21
    iput v1, p0, Lu/aly/E;->bvc:F

    .line 22
    iput v1, p0, Lu/aly/E;->bvd:F

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lu/aly/E;->bve:Landroid/content/Context;

    .line 40
    iput-object p1, p0, Lu/aly/E;->bve:Landroid/content/Context;

    .line 41
    invoke-virtual {p0, p2, p3}, Lu/aly/E;->bSx(Ljava/lang/String;I)V

    .line 42
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/E;
    .registers 5

    .prologue
    const-class v1, Lu/aly/E;

    monitor-enter v1

    .line 29
    :try_start_3
    sget-object v0, Lu/aly/E;->bvf:Lu/aly/E;

    if-eqz v0, :cond_b

    .line 36
    :goto_7
    sget-object v0, Lu/aly/E;->bvf:Lu/aly/E;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_25

    monitor-exit v1

    return-object v0

    .line 30
    :cond_b
    :try_start_b
    invoke-static {p0}, Lu/aly/z;->a(Landroid/content/Context;)Lu/aly/z;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/z;->b()Lu/aly/cm;

    move-result-object v0

    const/4 v2, 0x0

    .line 31
    invoke-virtual {v0, v2}, Lu/aly/cm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 32
    invoke-virtual {v0, v3}, Lu/aly/cm;->bYI(I)I

    move-result v0

    .line 33
    new-instance v3, Lu/aly/E;

    invoke-direct {v3, p0, v2, v0}, Lu/aly/E;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v3, Lu/aly/E;->bvf:Lu/aly/E;
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_25

    goto :goto_7

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 79
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string/jumbo v0, "\\|"

    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 84
    array-length v1, v0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2c

    .line 88
    aget-object v1, v0, v4

    const-string/jumbo v2, "SIG7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 96
    :cond_1f
    aget-object v1, v0, v4

    const-string/jumbo v2, "FIXED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 104
    :cond_2a
    return v4

    .line 80
    :cond_2b
    return v4

    .line 85
    :cond_2c
    return v4

    .line 89
    :cond_2d
    aget-object v1, v0, v5

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    .line 90
    aget-object v2, v0, v6

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    .line 91
    if-ne v1, v2, :cond_1f

    .line 92
    return v5

    .line 97
    :cond_44
    aget-object v1, v0, v6

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    .line 98
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 99
    if-lt v1, v0, :cond_2a

    if-lt v0, v5, :cond_2a

    .line 100
    return v5
.end method

.method private b(Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 109
    if-eqz p1, :cond_24

    const-string/jumbo v0, "\\|"

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x2

    .line 114
    aget-object v0, v6, v0

    const-string/jumbo v4, "SIG13"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    move v0, v1

    .line 118
    :goto_1b
    iget v4, p0, Lu/aly/E;->bvc:F

    cmpl-float v0, v4, v0

    if-lez v0, :cond_31

    .line 119
    iput-boolean v2, p0, Lu/aly/E;->a:Z

    .line 120
    return-void

    .line 110
    :cond_24
    return-void

    :cond_25
    const/4 v0, 0x3

    .line 115
    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1b

    .line 124
    :cond_31
    aget-object v0, v6, v2

    const-string/jumbo v4, "SIG7"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    move-object v0, v3

    :goto_3d
    const/4 v4, 0x4

    .line 133
    aget-object v4, v6, v4

    const-string/jumbo v7, "RPT"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_75

    :goto_49
    move v4, v1

    move v1, v2

    .line 143
    :goto_4b
    array-length v6, v0

    if-lt v1, v6, :cond_97

    move v1, v5

    .line 151
    :cond_4f
    if-ne v1, v5, :cond_a3

    .line 156
    iput-boolean v2, p0, Lu/aly/E;->a:Z

    .line 159
    :goto_53
    return-void

    .line 125
    :cond_54
    aget-object v0, v6, v9

    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 126
    array-length v0, v7

    new-array v4, v0, [F

    move v0, v2

    .line 127
    :goto_61
    array-length v8, v7

    if-lt v0, v8, :cond_66

    move-object v0, v4

    goto :goto_3d

    .line 128
    :cond_66
    aget-object v8, v7, v0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v4, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    :cond_75
    const/4 v3, 0x5

    .line 134
    aget-object v3, v6, v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 135
    array-length v3, v6

    new-array v4, v3, [I

    move v3, v2

    .line 136
    :goto_83
    array-length v7, v6

    if-lt v3, v7, :cond_88

    move-object v3, v4

    goto :goto_49

    .line 137
    :cond_88
    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v3

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_83

    .line 144
    :cond_97
    aget v6, v0, v1

    add-float/2addr v4, v6

    .line 145
    iget v6, p0, Lu/aly/E;->bvd:F

    cmpg-float v6, v6, v4

    if-ltz v6, :cond_4f

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 152
    :cond_a3
    iput-boolean v9, p0, Lu/aly/E;->a:Z

    .line 153
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lu/aly/E;->d:I

    .line 154
    aget v0, v3, v1

    iput v0, p0, Lu/aly/E;->b:I

    goto :goto_53
.end method

.method private bSw(Ljava/lang/String;I)F
    .registers 5

    .prologue
    .line 45
    mul-int/lit8 v0, p2, 0x2

    .line 46
    if-eqz p1, :cond_19

    .line 48
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x49800000    # 1048576.0f

    .line 51
    div-float/2addr v0, v1

    return v0

    :cond_19
    const/4 v0, 0x0

    .line 47
    return v0
.end method

.method private bSy(Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 164
    if-eqz p1, :cond_23

    const-string/jumbo v0, "\\|"

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    const/4 v5, 0x2

    .line 169
    aget-object v5, v4, v5

    const-string/jumbo v6, "SIG13"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 173
    :goto_1a
    iget v5, p0, Lu/aly/E;->bvc:F

    cmpl-float v0, v5, v0

    if-lez v0, :cond_30

    .line 174
    iput-boolean v3, p0, Lu/aly/E;->a:Z

    .line 175
    return-void

    .line 165
    :cond_23
    return-void

    :cond_24
    const/4 v0, 0x3

    .line 170
    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1a

    .line 179
    :cond_30
    aget-object v0, v4, v3

    const-string/jumbo v5, "FIXED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    move v0, v1

    :goto_3c
    const/4 v5, 0x4

    .line 184
    aget-object v5, v4, v5

    const-string/jumbo v6, "RPT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_58

    .line 192
    :goto_48
    if-ne v0, v1, :cond_7a

    .line 197
    iput-boolean v3, p0, Lu/aly/E;->a:Z

    .line 199
    :goto_4c
    return-void

    .line 180
    :cond_4d
    aget-object v0, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3c

    :cond_58
    const/4 v2, 0x5

    .line 185
    aget-object v2, v4, v2

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 186
    array-length v2, v5

    new-array v4, v2, [I

    move v2, v3

    .line 187
    :goto_66
    array-length v6, v5

    if-lt v2, v6, :cond_6b

    move-object v2, v4

    goto :goto_48

    .line 188
    :cond_6b
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v2

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 193
    :cond_7a
    iput-boolean v7, p0, Lu/aly/E;->a:Z

    .line 194
    iput v0, p0, Lu/aly/E;->d:I

    .line 195
    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    iput v0, p0, Lu/aly/E;->b:I

    goto :goto_4c
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 202
    iget-boolean v0, p0, Lu/aly/E;->a:Z

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 206
    iget v0, p0, Lu/aly/E;->b:I

    return v0
.end method

.method public bSq(Lu/aly/cm;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 227
    invoke-virtual {p1, v0}, Lu/aly/cm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lu/aly/cm;->bYI(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lu/aly/E;->bSx(Ljava/lang/String;I)V

    .line 228
    return-void
.end method

.method public bSx(Ljava/lang/String;I)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 56
    iput p2, p0, Lu/aly/E;->c:I

    .line 57
    iget-object v0, p0, Lu/aly/E;->bve:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ce;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 59
    :cond_f
    iput-boolean v2, p0, Lu/aly/E;->a:Z

    .line 60
    return-void

    .line 58
    :cond_12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0xc

    .line 64
    :try_start_1a
    invoke-direct {p0, v0, v1}, Lu/aly/E;->bSw(Ljava/lang/String;I)F

    move-result v1

    iput v1, p0, Lu/aly/E;->bvc:F

    const/4 v1, 0x6

    .line 65
    invoke-direct {p0, v0, v1}, Lu/aly/E;->bSw(Ljava/lang/String;I)F

    move-result v0

    iput v0, p0, Lu/aly/E;->bvd:F

    const-string/jumbo v0, "SIG7"

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string/jumbo v0, "FIXED"

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 76
    :goto_39
    return-void

    .line 68
    :cond_3a
    invoke-direct {p0, p1}, Lu/aly/E;->b(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_3d} :catch_3e

    goto :goto_39

    .line 75
    :catch_3e
    move-exception v0

    .line 73
    iput-boolean v2, p0, Lu/aly/E;->a:Z

    const-string/jumbo v1, "MobclickAgent"

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "v:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_39

    .line 70
    :cond_5c
    :try_start_5c
    invoke-direct {p0, p1}, Lu/aly/E;->bSy(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_3e

    goto :goto_39
.end method

.method public e()Ljava/util/Map;
    .registers 4

    .prologue
    .line 218
    iget-boolean v0, p0, Lu/aly/E;->a:Z

    if-eqz v0, :cond_16

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "client_test"

    .line 221
    iget v2, p0, Lu/aly/E;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-object v0

    :cond_16
    const/4 v0, 0x0

    .line 219
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " p13:"

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget v1, p0, Lu/aly/E;->bvc:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " p07:"

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget v1, p0, Lu/aly/E;->bvd:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " policy:"

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget v1, p0, Lu/aly/E;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " interval:"

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget v1, p0, Lu/aly/E;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
