.class public Lu/aly/ce;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:I

.field private bza:[B

.field private bzb:[B

.field private bzc:I

.field private bzd:[B

.field private bze:[B

.field private bzf:Z

.field private final c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private h:[B

.field private j:I

.field private k:I


# direct methods
.method private constructor <init>([BLjava/lang/String;[B)V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 24
    new-array v0, v0, [B

    aput-byte v2, v0, v2

    aput-byte v2, v0, v4

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v2, v0, v1

    iput-object v0, p0, Lu/aly/ce;->a:[B

    .line 25
    iput v4, p0, Lu/aly/ce;->b:I

    .line 26
    iput v2, p0, Lu/aly/ce;->c:I

    const-string/jumbo v0, "1.0"

    .line 28
    iput-object v0, p0, Lu/aly/ce;->d:Ljava/lang/String;

    .line 29
    iput-object v3, p0, Lu/aly/ce;->e:Ljava/lang/String;

    .line 31
    iput-object v3, p0, Lu/aly/ce;->bza:[B

    .line 32
    iput-object v3, p0, Lu/aly/ce;->bzb:[B

    .line 33
    iput-object v3, p0, Lu/aly/ce;->h:[B

    .line 35
    iput v2, p0, Lu/aly/ce;->bzc:I

    .line 36
    iput v2, p0, Lu/aly/ce;->j:I

    .line 37
    iput v2, p0, Lu/aly/ce;->k:I

    .line 39
    iput-object v3, p0, Lu/aly/ce;->bzd:[B

    .line 40
    iput-object v3, p0, Lu/aly/ce;->bze:[B

    .line 42
    iput-boolean v2, p0, Lu/aly/ce;->bzf:Z

    .line 46
    if-nez p1, :cond_4a

    .line 47
    :cond_41
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "entity is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_4a
    array-length v0, p1

    if-eqz v0, :cond_41

    .line 50
    iput-object p2, p0, Lu/aly/ce;->e:Ljava/lang/String;

    .line 51
    array-length v0, p1

    iput v0, p0, Lu/aly/ce;->k:I

    .line 52
    invoke-static {p1}, Lu/aly/h;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lu/aly/ce;->bzd:[B

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lu/aly/ce;->j:I

    .line 55
    iput-object p3, p0, Lu/aly/ce;->bze:[B

    .line 56
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-static {p0}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_f

    const-string/jumbo v1, "signature"

    .line 63
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_f
    return-object v2
.end method

.method public static bYf(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/ce;
    .registers 11

    .prologue
    const/4 v7, 0x0

    .line 84
    :try_start_1
    invoke-static {p0}, Lu/aly/e;->bQB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {p0}, Lu/aly/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {p0}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "signature"

    const/4 v4, 0x0

    .line 89
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "serial"

    const/4 v5, 0x1

    .line 90
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 92
    new-instance v5, Lu/aly/ce;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v5, p2, p1, v0}, Lu/aly/ce;-><init>([BLjava/lang/String;[B)V

    .line 94
    invoke-virtual {v5, v3}, Lu/aly/ce;->a(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v5, v4}, Lu/aly/ce;->a(I)V

    .line 96
    invoke-virtual {v5}, Lu/aly/ce;->b()V

    .line 98
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "serial"

    add-int/lit8 v2, v4, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "signature"

    invoke-virtual {v5}, Lu/aly/ce;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    invoke-virtual {v5, p0}, Lu/aly/ce;->b(Landroid/content/Context;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5e} :catch_5f

    .line 100
    return-object v5

    :catch_5f
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    return-object v7
.end method

.method public static bYg(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/ce;
    .registers 11

    .prologue
    const/4 v7, 0x0

    .line 110
    :try_start_1
    invoke-static {p0}, Lu/aly/e;->bQB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {p0}, Lu/aly/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {p0}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "signature"

    const/4 v4, 0x0

    .line 115
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "serial"

    const/4 v5, 0x1

    .line 116
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 118
    new-instance v5, Lu/aly/ce;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v5, p2, p1, v0}, Lu/aly/ce;-><init>([BLjava/lang/String;[B)V

    .line 120
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lu/aly/ce;->a(Z)V

    .line 121
    invoke-virtual {v5, v3}, Lu/aly/ce;->a(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v5, v4}, Lu/aly/ce;->a(I)V

    .line 123
    invoke-virtual {v5}, Lu/aly/ce;->b()V

    .line 125
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "serial"

    add-int/lit8 v2, v4, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "signature"

    invoke-virtual {v5}, Lu/aly/ce;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    invoke-virtual {v5, p0}, Lu/aly/ce;->b(Landroid/content/Context;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_62} :catch_63

    .line 127
    return-object v5

    :catch_63
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    return-object v7
.end method

.method private bYh([BI)[B
    .registers 12

    .prologue
    const/4 v8, 0x2

    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lu/aly/ce;->bze:[B

    invoke-static {v1}, Lcom/umeng/analytics/b;->b([B)[B

    move-result-object v2

    .line 158
    iget-object v1, p0, Lu/aly/ce;->bzd:[B

    invoke-static {v1}, Lcom/umeng/analytics/b;->b([B)[B

    move-result-object v3

    .line 160
    array-length v4, v2

    .line 161
    mul-int/lit8 v1, v4, 0x2

    new-array v5, v1, [B

    move v1, v0

    .line 164
    :goto_14
    if-lt v1, v4, :cond_3e

    move v1, v0

    .line 171
    :goto_17
    if-lt v1, v8, :cond_51

    const/4 v1, 0x4

    .line 177
    new-array v1, v1, [B

    .line 179
    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/4 v2, 0x1

    .line 180
    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 181
    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    const/4 v2, 0x3

    .line 182
    ushr-int/lit8 v3, p2, 0x18

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 184
    :goto_3a
    array-length v2, v5

    if-lt v0, v2, :cond_66

    .line 188
    return-object v5

    .line 165
    :cond_3e
    mul-int/lit8 v6, v1, 0x2

    aget-byte v7, v3, v1

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 166
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-byte v7, v2, v1

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 172
    :cond_51
    aget-byte v2, p1, v1

    int-to-byte v2, v2

    aput-byte v2, v5, v1

    .line 173
    array-length v2, v5

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 185
    :cond_66
    aget-byte v2, v5, v0

    rem-int/lit8 v3, v0, 0x4

    aget-byte v3, v1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a
.end method

.method private d()[B
    .registers 7

    .prologue
    .line 192
    iget-object v0, p0, Lu/aly/ce;->a:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-direct {p0, v0, v1}, Lu/aly/ce;->bYh([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private e()[B
    .registers 3

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    iget-object v1, p0, Lu/aly/ce;->bza:[B

    invoke-static {v1}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget v1, p0, Lu/aly/ce;->bzc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    iget v1, p0, Lu/aly/ce;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    iget v1, p0, Lu/aly/ce;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    iget-object v1, p0, Lu/aly/ce;->bzb:[B

    invoke-static {v1}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/b;->b([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lu/aly/ce;->bza:[B

    invoke-static {v0}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 75
    iput p1, p0, Lu/aly/ce;->bzc:I

    .line 76
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 67
    invoke-static {p1}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lu/aly/ce;->bza:[B

    .line 68
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 79
    iput-boolean p1, p0, Lu/aly/ce;->bzf:Z

    .line 80
    return-void
.end method

.method public b()V
    .registers 6

    .prologue
    const/16 v1, 0x10

    .line 139
    iget-object v0, p0, Lu/aly/ce;->bza:[B

    if-eqz v0, :cond_1b

    .line 143
    :goto_6
    iget-boolean v0, p0, Lu/aly/ce;->bzf:Z

    if-nez v0, :cond_22

    .line 152
    :goto_a
    iget-object v0, p0, Lu/aly/ce;->bza:[B

    iget v1, p0, Lu/aly/ce;->j:I

    invoke-direct {p0, v0, v1}, Lu/aly/ce;->bYh([BI)[B

    move-result-object v0

    iput-object v0, p0, Lu/aly/ce;->bzb:[B

    .line 153
    invoke-direct {p0}, Lu/aly/ce;->e()[B

    move-result-object v0

    iput-object v0, p0, Lu/aly/ce;->h:[B

    .line 154
    return-void

    .line 140
    :cond_1b
    invoke-direct {p0}, Lu/aly/ce;->d()[B

    move-result-object v0

    iput-object v0, p0, Lu/aly/ce;->bza:[B

    goto :goto_6

    .line 144
    :cond_22
    new-array v0, v1, [B

    .line 146
    :try_start_24
    iget-object v1, p0, Lu/aly/ce;->bza:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget-object v1, p0, Lu/aly/ce;->bzd:[B

    invoke-static {v1, v0}, Lcom/umeng/analytics/b;->a([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lu/aly/ce;->bzd:[B
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_35} :catch_36

    goto :goto_a

    .line 149
    :catch_36
    move-exception v0

    goto :goto_a
.end method

.method public b(Landroid/content/Context;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 233
    iget-object v0, p0, Lu/aly/ce;->e:Ljava/lang/String;

    .line 234
    invoke-static {p1}, Lu/aly/z;->a(Landroid/content/Context;)Lu/aly/z;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/z;->b()Lu/aly/cm;

    move-result-object v1

    invoke-virtual {v1, v2}, Lu/aly/cm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    iget-object v2, p0, Lu/aly/ce;->bza:[B

    invoke-static {v2}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 236
    new-array v3, v7, [B

    .line 237
    iget-object v4, p0, Lu/aly/ce;->bza:[B

    const/4 v5, 0x2

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    invoke-static {v3}, Lcom/umeng/analytics/b;->b([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v3

    .line 240
    :try_start_28
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v5, "appkey"

    .line 241
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    if-nez v1, :cond_63

    :goto_35
    const-string/jumbo v0, "signature"

    .line 245
    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "checksum"

    .line 246
    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, ".umeng"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 255
    :goto_57
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "exchangeIdentity.json"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lu/aly/bu;->bVY(Ljava/io/File;Ljava/lang/String;)V

    .line 259
    :goto_62
    return-void

    :cond_63
    const-string/jumbo v0, "umid"

    .line 243
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_69} :catch_6a

    goto :goto_35

    .line 258
    :catch_6a
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_62

    .line 252
    :cond_6f
    :try_start_6f
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_6a

    goto :goto_57
.end method

.method public c()[B
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 208
    new-instance v1, Lu/aly/br;

    invoke-direct {v1}, Lu/aly/br;-><init>()V

    .line 210
    iget-object v2, p0, Lu/aly/ce;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lu/aly/br;->a(Ljava/lang/String;)Lu/aly/br;

    .line 211
    iget-object v2, p0, Lu/aly/ce;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lu/aly/br;->b(Ljava/lang/String;)Lu/aly/br;

    .line 212
    iget-object v2, p0, Lu/aly/ce;->bza:[B

    invoke-static {v2}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lu/aly/br;->cbg(Ljava/lang/String;)Lu/aly/br;

    .line 213
    iget v2, p0, Lu/aly/ce;->bzc:I

    invoke-virtual {v1, v2}, Lu/aly/br;->a(I)Lu/aly/br;

    .line 214
    iget v2, p0, Lu/aly/ce;->j:I

    invoke-virtual {v1, v2}, Lu/aly/br;->cbk(I)Lu/aly/br;

    .line 215
    iget v2, p0, Lu/aly/ce;->k:I

    invoke-virtual {v1, v2}, Lu/aly/br;->cbn(I)Lu/aly/br;

    .line 217
    iget-object v2, p0, Lu/aly/ce;->bzd:[B

    invoke-virtual {v1, v2}, Lu/aly/br;->a([B)Lu/aly/br;

    .line 218
    iget-boolean v2, p0, Lu/aly/ce;->bzf:Z

    if-nez v2, :cond_50

    :goto_31
    invoke-virtual {v1, v0}, Lu/aly/br;->cbw(I)Lu/aly/br;

    .line 220
    iget-object v0, p0, Lu/aly/ce;->bzb:[B

    invoke-static {v0}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lu/aly/br;->cbs(Ljava/lang/String;)Lu/aly/br;

    .line 221
    iget-object v0, p0, Lu/aly/ce;->h:[B

    invoke-static {v0}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lu/aly/br;->cbu(Ljava/lang/String;)Lu/aly/br;

    .line 224
    :try_start_46
    new-instance v0, Lu/aly/bH;

    invoke-direct {v0}, Lu/aly/bH;-><init>()V

    invoke-virtual {v0, v1}, Lu/aly/bH;->bWn(Lu/aly/cj;)[B
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4e} :catch_52

    move-result-object v0

    return-object v0

    :cond_50
    const/4 v0, 0x1

    .line 218
    goto :goto_31

    .line 224
    :catch_52
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 229
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "version : %s\n"

    .line 264
    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lu/aly/ce;->d:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "address : %s\n"

    .line 265
    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lu/aly/ce;->e:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "signature : %s\n"

    .line 266
    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lu/aly/ce;->bza:[B

    invoke-static {v5}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "serial : %s\n"

    .line 267
    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lu/aly/ce;->bzc:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "timestamp : %d\n"

    .line 268
    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lu/aly/ce;->j:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "length : %d\n"

    .line 269
    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lu/aly/ce;->k:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "guid : %s\n"

    .line 270
    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lu/aly/ce;->bzb:[B

    invoke-static {v5}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checksum : %s "

    .line 271
    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lu/aly/ce;->h:[B

    invoke-static {v5}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "codex : %d"

    .line 272
    new-array v4, v0, [Ljava/lang/Object;

    iget-boolean v5, p0, Lu/aly/ce;->bzf:Z

    if-nez v5, :cond_a9

    move v0, v1

    :cond_a9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
