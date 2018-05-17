.class public Lu/aly/cP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static bAb:Lu/aly/cP;


# instance fields
.field private final b:Ljava/lang/String;

.field private bAa:Lu/aly/dr;

.field private bzX:Ljava/io/File;

.field private bzY:Lu/aly/bb;

.field private bzZ:Ljava/util/Set;

.field private e:J

.field private f:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "umeng_it.cache"

    .line 33
    iput-object v0, p0, Lu/aly/cP;->b:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lu/aly/cP;->bzY:Lu/aly/bb;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lu/aly/cP;->bzZ:Ljava/util/Set;

    .line 40
    iput-object v1, p0, Lu/aly/cP;->bAa:Lu/aly/dr;

    .line 45
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "umeng_it.cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lu/aly/cP;->bzX:Ljava/io/File;

    const-wide/32 v0, 0x5265c00

    .line 46
    iput-wide v0, p0, Lu/aly/cP;->f:J

    .line 47
    new-instance v0, Lu/aly/dr;

    invoke-direct {v0, p1}, Lu/aly/dr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/cP;->bAa:Lu/aly/dr;

    .line 48
    iget-object v0, p0, Lu/aly/cP;->bAa:Lu/aly/dr;

    invoke-virtual {v0}, Lu/aly/dr;->b()V

    .line 49
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/cP;
    .registers 4

    .prologue
    const-class v1, Lu/aly/cP;

    monitor-enter v1

    .line 52
    :try_start_3
    sget-object v0, Lu/aly/cP;->bAb:Lu/aly/cP;

    if-eqz v0, :cond_b

    .line 65
    :goto_7
    sget-object v0, Lu/aly/cP;->bAb:Lu/aly/cP;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_54

    monitor-exit v1

    return-object v0

    .line 53
    :cond_b
    :try_start_b
    new-instance v0, Lu/aly/cP;

    invoke-direct {v0, p0}, Lu/aly/cP;-><init>(Landroid/content/Context;)V

    sput-object v0, Lu/aly/cP;->bAb:Lu/aly/cP;

    .line 55
    sget-object v0, Lu/aly/cP;->bAb:Lu/aly/cP;

    new-instance v2, Lu/aly/T;

    invoke-direct {v2, p0}, Lu/aly/T;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lu/aly/cP;->bZe(Lu/aly/cO;)Z

    .line 56
    sget-object v0, Lu/aly/cP;->bAb:Lu/aly/cP;

    new-instance v2, Lu/aly/al;

    invoke-direct {v2, p0}, Lu/aly/al;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lu/aly/cP;->bZe(Lu/aly/cO;)Z

    .line 57
    sget-object v0, Lu/aly/cP;->bAb:Lu/aly/cP;

    new-instance v2, Lu/aly/dw;

    invoke-direct {v2, p0}, Lu/aly/dw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lu/aly/cP;->bZe(Lu/aly/cO;)Z

    .line 58
    sget-object v0, Lu/aly/cP;->bAb:Lu/aly/cP;

    new-instance v2, Lu/aly/J;

    invoke-direct {v2, p0}, Lu/aly/J;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lu/aly/cP;->bZe(Lu/aly/cO;)Z

    .line 59
    sget-object v0, Lu/aly/cP;->bAb:Lu/aly/cP;

    new-instance v2, Lu/aly/aU;

    invoke-direct {v2, p0}, Lu/aly/aU;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lu/aly/cP;->bZe(Lu/aly/cO;)Z

    .line 60
    sget-object v0, Lu/aly/cP;->bAb:Lu/aly/cP;

    new-instance v2, Lu/aly/by;

    invoke-direct {v2}, Lu/aly/by;-><init>()V

    invoke-virtual {v0, v2}, Lu/aly/cP;->bZe(Lu/aly/cO;)Z

    .line 62
    sget-object v0, Lu/aly/cP;->bAb:Lu/aly/cP;

    invoke-virtual {v0}, Lu/aly/cP;->e()V
    :try_end_53
    .catchall {:try_start_b .. :try_end_53} :catchall_54

    goto :goto_7

    :catchall_54
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private bZf(Lu/aly/bb;)V
    .registers 4

    .prologue
    .line 218
    if-nez p1, :cond_3

    .line 232
    :cond_2
    :goto_2
    return-void

    .line 221
    :cond_3
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4} :catch_16

    .line 222
    :try_start_4
    new-instance v0, Lu/aly/bH;

    invoke-direct {v0}, Lu/aly/bH;-><init>()V

    invoke-virtual {v0, p1}, Lu/aly/bH;->bWn(Lu/aly/cj;)[B

    move-result-object v0

    .line 223
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_1b

    .line 225
    if-eqz v0, :cond_2

    .line 226
    :try_start_10
    iget-object v1, p0, Lu/aly/cP;->bzX:Ljava/io/File;

    invoke-static {v1, v0}, Lu/aly/bu;->bVX(Ljava/io/File;[B)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_2

    .line 230
    :catch_16
    move-exception v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 223
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1e} :catch_16
.end method

.method private g()V
    .registers 8

    .prologue
    .line 116
    new-instance v1, Lu/aly/bb;

    invoke-direct {v1}, Lu/aly/bb;-><init>()V

    .line 117
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 118
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 120
    iget-object v0, p0, Lu/aly/cP;->bzZ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_26

    .line 133
    invoke-virtual {v1, v3}, Lu/aly/bb;->a(Ljava/util/List;)Lu/aly/bb;

    .line 134
    invoke-virtual {v1, v2}, Lu/aly/bb;->bQM(Ljava/util/Map;)Lu/aly/bb;

    .line 136
    monitor-enter p0

    .line 138
    :try_start_22
    iput-object v1, p0, Lu/aly/cP;->bzY:Lu/aly/bb;

    .line 139
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_5c

    .line 140
    return-void

    .line 120
    :cond_26
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cO;

    .line 121
    invoke-virtual {v0}, Lu/aly/cO;->c()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 124
    invoke-virtual {v0}, Lu/aly/cO;->d()Lu/aly/ba;

    move-result-object v5

    if-nez v5, :cond_50

    .line 128
    :goto_38
    invoke-virtual {v0}, Lu/aly/cO;->e()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual {v0}, Lu/aly/cO;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_15

    .line 129
    invoke-virtual {v0}, Lu/aly/cO;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_15

    .line 125
    :cond_50
    invoke-virtual {v0}, Lu/aly/cO;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lu/aly/cO;->d()Lu/aly/ba;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 139
    :catchall_5c
    move-exception v0

    :try_start_5d
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v0
.end method

.method private h()Lu/aly/bb;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Lu/aly/cP;->bzX:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 201
    :try_start_9
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lu/aly/cP;->bzX:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_26
    .catchall {:try_start_9 .. :try_end_10} :catchall_2f

    .line 202
    :try_start_10
    invoke-static {v1}, Lu/aly/bu;->bVW(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 204
    new-instance v3, Lu/aly/bb;

    invoke-direct {v3}, Lu/aly/bb;-><init>()V

    .line 205
    new-instance v4, Lu/aly/bT;

    invoke-direct {v4}, Lu/aly/bT;-><init>()V

    invoke-virtual {v4, v3, v0}, Lu/aly/bT;->bXR(Lu/aly/cj;[B)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_21} :catch_37
    .catchall {:try_start_10 .. :try_end_21} :catchall_35

    .line 211
    invoke-static {v1}, Lu/aly/bu;->bVZ(Ljava/io/InputStream;)V

    return-object v3

    .line 198
    :cond_25
    return-object v2

    .line 211
    :catch_26
    move-exception v0

    move-object v1, v2

    .line 209
    :goto_28
    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_35

    .line 211
    invoke-static {v1}, Lu/aly/bu;->bVZ(Ljava/io/InputStream;)V

    .line 214
    return-object v2

    .line 212
    :catchall_2f
    move-exception v0

    move-object v1, v2

    .line 211
    :goto_31
    invoke-static {v1}, Lu/aly/bu;->bVZ(Ljava/io/InputStream;)V

    throw v0

    .line 212
    :catchall_35
    move-exception v0

    goto :goto_31

    .line 211
    :catch_37
    move-exception v0

    goto :goto_28
.end method


# virtual methods
.method public a()V
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 84
    iget-wide v6, p0, Lu/aly/cP;->e:J

    sub-long v6, v4, v6

    iget-wide v8, p0, Lu/aly/cP;->f:J

    cmp-long v1, v6, v8

    if-gez v1, :cond_25

    move v1, v2

    :goto_11
    if-nez v1, :cond_24

    .line 87
    iget-object v1, p0, Lu/aly/cP;->bzZ:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_27

    .line 101
    if-nez v1, :cond_4f

    .line 107
    :goto_22
    iput-wide v4, p0, Lu/aly/cP;->e:J

    .line 109
    :cond_24
    return-void

    :cond_25
    move v1, v0

    .line 84
    goto :goto_11

    .line 87
    :cond_27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cO;

    .line 88
    invoke-virtual {v0}, Lu/aly/cO;->c()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 92
    invoke-virtual {v0}, Lu/aly/cO;->a()Z

    move-result v6

    if-nez v6, :cond_3c

    move v0, v1

    :goto_3a
    move v1, v0

    .line 99
    goto :goto_1a

    .line 95
    :cond_3c
    invoke-virtual {v0}, Lu/aly/cO;->c()Z

    move-result v1

    if-eqz v1, :cond_44

    move v0, v2

    goto :goto_3a

    .line 96
    :cond_44
    iget-object v1, p0, Lu/aly/cP;->bAa:Lu/aly/dr;

    invoke-virtual {v0}, Lu/aly/cO;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lu/aly/dr;->b(Ljava/lang/String;)V

    move v0, v2

    goto :goto_3a

    .line 102
    :cond_4f
    invoke-direct {p0}, Lu/aly/cP;->g()V

    .line 103
    iget-object v0, p0, Lu/aly/cP;->bAa:Lu/aly/dr;

    invoke-virtual {v0}, Lu/aly/dr;->a()V

    .line 104
    invoke-virtual {p0}, Lu/aly/cP;->f()V

    goto :goto_22
.end method

.method public b()Lu/aly/bb;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lu/aly/cP;->bzY:Lu/aly/bb;

    return-object v0
.end method

.method public bZe(Lu/aly/cO;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lu/aly/cP;->bAa:Lu/aly/dr;

    invoke-virtual {p1}, Lu/aly/cO;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/dr;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 75
    return v2

    .line 70
    :cond_e
    iget-object v0, p0, Lu/aly/cP;->bzZ:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 148
    iget-object v0, p0, Lu/aly/cP;->bzZ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    .line 158
    if-nez v1, :cond_37

    .line 162
    :goto_11
    return-void

    .line 148
    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cO;

    .line 149
    invoke-virtual {v0}, Lu/aly/cO;->c()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 152
    invoke-virtual {v0}, Lu/aly/cO;->e()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_27

    :cond_24
    move v0, v1

    :goto_25
    move v1, v0

    .line 156
    goto :goto_9

    .line 152
    :cond_27
    invoke-virtual {v0}, Lu/aly/cO;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_24

    .line 153
    invoke-virtual {v0, v5}, Lu/aly/cO;->a(Ljava/util/List;)V

    const/4 v1, 0x1

    move v0, v1

    .line 154
    goto :goto_25

    .line 159
    :cond_37
    iget-object v0, p0, Lu/aly/cP;->bzY:Lu/aly/bb;

    invoke-virtual {v0, v2}, Lu/aly/bb;->bQN(Z)V

    .line 160
    invoke-virtual {p0}, Lu/aly/cP;->f()V

    goto :goto_11
.end method

.method public e()V
    .registers 5

    .prologue
    .line 165
    invoke-direct {p0}, Lu/aly/cP;->h()Lu/aly/bb;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_2f

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lu/aly/cP;->bzZ:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    monitor-enter p0

    .line 173
    :try_start_12
    iput-object v0, p0, Lu/aly/cP;->bzY:Lu/aly/bb;

    .line 175
    iget-object v0, p0, Lu/aly/cP;->bzZ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_30

    .line 183
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_48

    .line 186
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_45

    .line 188
    invoke-direct {p0}, Lu/aly/cP;->g()V

    .line 189
    return-void

    .line 168
    :cond_2f
    return-void

    .line 175
    :cond_30
    :try_start_30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cO;

    .line 176
    iget-object v3, p0, Lu/aly/cP;->bzY:Lu/aly/bb;

    invoke-virtual {v0, v3}, Lu/aly/cO;->bZd(Lu/aly/bb;)V

    .line 178
    invoke-virtual {v0}, Lu/aly/cO;->c()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 179
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 186
    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_30 .. :try_end_47} :catchall_45

    throw v0

    .line 183
    :cond_48
    :try_start_48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cO;

    .line 184
    iget-object v2, p0, Lu/aly/cP;->bzZ:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_45

    goto :goto_24
.end method

.method public f()V
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lu/aly/cP;->bzY:Lu/aly/bb;

    if-nez v0, :cond_5

    .line 194
    :goto_4
    return-void

    .line 193
    :cond_5
    iget-object v0, p0, Lu/aly/cP;->bzY:Lu/aly/bb;

    invoke-direct {p0, v0}, Lu/aly/cP;->bZf(Lu/aly/bb;)V

    goto :goto_4
.end method
