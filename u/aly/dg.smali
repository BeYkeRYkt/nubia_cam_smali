.class public Lu/aly/dg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static g:Ljava/lang/String;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lu/aly/dg;->g:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "a_start_time"

    .line 30
    iput-object v0, p0, Lu/aly/dg;->d:Ljava/lang/String;

    const-string/jumbo v0, "a_end_time"

    .line 31
    iput-object v0, p0, Lu/aly/dg;->e:Ljava/lang/String;

    return-void
.end method

.method private bZF(Landroid/content/SharedPreferences;)V
    .registers 5

    .prologue
    .line 89
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "session_start_time"

    .line 91
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "session_end_time"

    .line 92
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "a_start_time"

    .line 93
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "a_end_time"

    .line 94
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "activities"

    const-string/jumbo v2, ""

    .line 95
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    return-void
.end method

.method private bZG(Landroid/content/SharedPreferences;)Z
    .registers 14

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "a_start_time"

    .line 160
    invoke-interface {p1, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v0, "a_end_time"

    .line 161
    invoke-interface {p1, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 165
    cmp-long v0, v4, v10

    if-eqz v0, :cond_31

    sub-long v4, v8, v4

    sget-wide v10, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v0, v4, v10

    if-ltz v0, :cond_2f

    move v0, v1

    :goto_23
    if-nez v0, :cond_31

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "onResume called before onPause"

    .line 166
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return v2

    :cond_2f
    move v0, v2

    .line 165
    goto :goto_23

    .line 170
    :cond_31
    sub-long v4, v8, v6

    sget-wide v6, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_3d

    move v0, v1

    :goto_3a
    if-nez v0, :cond_3f

    .line 171
    return v1

    :cond_3d
    move v0, v2

    .line 170
    goto :goto_3a

    .line 173
    :cond_3f
    return v2
.end method

.method private bZH(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .registers 13

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 177
    invoke-static {p1}, Lu/aly/db;->a(Landroid/content/Context;)Lu/aly/db;

    move-result-object v1

    .line 178
    invoke-virtual {p0, p1}, Lu/aly/dg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {p0, p1}, Lu/aly/dg;->a(Landroid/content/Context;)Lu/aly/aj;

    move-result-object v3

    .line 182
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "session_id"

    .line 184
    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "session_start_time"

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "session_end_time"

    .line 186
    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "a_start_time"

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "a_end_time"

    .line 188
    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    if-nez v3, :cond_44

    .line 195
    check-cast v0, Lu/aly/aj;

    invoke-virtual {v1, v0}, Lu/aly/db;->bRH(Lu/aly/P;)V

    .line 198
    :goto_43
    return-object v2

    .line 193
    :cond_44
    invoke-virtual {v1, v3}, Lu/aly/db;->bRH(Lu/aly/P;)V

    goto :goto_43
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 253
    sget-object v0, Lu/aly/dg;->g:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 256
    :goto_5
    sget-object v0, Lu/aly/dg;->g:Ljava/lang/String;

    return-object v0

    .line 254
    :cond_8
    invoke-static {p0}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "session_id"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu/aly/dg;->g:Ljava/lang/String;

    goto :goto_5
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lu/aly/aj;
    .registers 16

    .prologue
    .line 37
    invoke-static {p1}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string/jumbo v0, "session_id"

    const/4 v1, 0x0

    .line 39
    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    if-eqz v3, :cond_61

    const-string/jumbo v0, "session_start_time"

    const-wide/16 v4, 0x0

    .line 44
    invoke-interface {v8, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v0, "session_end_time"

    const-wide/16 v6, 0x0

    .line 45
    invoke-interface {v8, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v0, 0x0

    const-wide/16 v10, 0x0

    .line 48
    cmp-long v2, v6, v10

    if-eqz v2, :cond_3a

    .line 49
    sub-long v0, v6, v4

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    cmp-long v2, v10, v12

    if-gtz v2, :cond_63

    const/4 v2, 0x1

    :goto_36
    if-nez v2, :cond_3a

    const-wide/16 v0, 0x0

    .line 55
    :cond_3a
    new-instance v9, Lu/aly/aj;

    invoke-direct {v9}, Lu/aly/aj;-><init>()V

    .line 57
    invoke-virtual {v9, v3}, Lu/aly/aj;->a(Ljava/lang/String;)Lu/aly/bn;

    .line 58
    invoke-virtual {v9, v4, v5}, Lu/aly/aj;->a(J)Lu/aly/bn;

    .line 59
    invoke-virtual {v9, v6, v7}, Lu/aly/aj;->bRL(J)Lu/aly/bn;

    .line 60
    invoke-virtual {v9, v0, v1}, Lu/aly/aj;->bRN(J)Lu/aly/bn;

    .line 62
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->getLocation()[D

    move-result-object v0

    .line 63
    if-nez v0, :cond_65

    .line 72
    :goto_51
    invoke-static {p1}, Lu/aly/aZ;->a(Landroid/content/Context;)Lu/aly/bo;

    move-result-object v0

    .line 73
    if-nez v0, :cond_8c

    .line 77
    :goto_57
    invoke-static {v8}, Lu/aly/aL;->bVC(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v0

    .line 79
    if-nez v0, :cond_90

    .line 83
    :cond_5d
    :goto_5d
    invoke-direct {p0, v8}, Lu/aly/dg;->bZF(Landroid/content/SharedPreferences;)V

    .line 85
    return-object v9

    :cond_61
    const/4 v0, 0x0

    .line 42
    return-object v0

    .line 50
    :cond_63
    const/4 v2, 0x0

    goto :goto_36

    .line 64
    :cond_65
    new-instance v1, Lu/aly/bg;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lu/aly/bg;-><init>(DDJ)V

    .line 65
    invoke-virtual {v9}, Lu/aly/aj;->bRV()Z

    move-result v0

    if-nez v0, :cond_88

    const/4 v0, 0x1

    .line 68
    new-array v0, v0, [Lu/aly/bg;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v9, v0}, Lu/aly/aj;->bRU(Ljava/util/List;)Lu/aly/bn;

    goto :goto_51

    .line 66
    :cond_88
    invoke-virtual {v9, v1}, Lu/aly/aj;->bRT(Lu/aly/bg;)V

    goto :goto_51

    .line 74
    :cond_8c
    invoke-virtual {v9, v0}, Lu/aly/aj;->bRX(Lu/aly/bo;)Lu/aly/bn;

    goto :goto_57

    .line 79
    :cond_90
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5d

    .line 80
    invoke-virtual {v9, v0}, Lu/aly/aj;->a(Ljava/util/List;)Lu/aly/bn;

    goto :goto_5d
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 102
    invoke-static {p1}, Lu/aly/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 106
    if-eqz v1, :cond_2b

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu/aly/dg;->g:Ljava/lang/String;

    .line 113
    sget-object v0, Lu/aly/dg;->g:Ljava/lang/String;

    return-object v0

    .line 107
    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Appkey is null or empty, Please check AndroidManifest.xml"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-static {p1}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_48

    .line 123
    invoke-direct {p0, v0}, Lu/aly/dg;->bZG(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-nez v1, :cond_49

    const-string/jumbo v1, "session_id"

    .line 127
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "a_start_time"

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "a_end_time"

    const-wide/16 v4, 0x0

    .line 130
    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo v0, "MobclickAgent"

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Extend current session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/aly/O;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_47
    return-void

    .line 120
    :cond_48
    return-void

    .line 124
    :cond_49
    invoke-direct {p0, p1, v0}, Lu/aly/dg;->bZH(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MobclickAgent"

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Start new session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lu/aly/O;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47
.end method

.method public d(Landroid/content/Context;)V
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    .line 137
    invoke-static {p1}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_35

    const-string/jumbo v1, "a_start_time"

    .line 142
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 144
    cmp-long v1, v2, v4

    if-nez v1, :cond_17

    sget-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v1, :cond_36

    .line 147
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "a_start_time"

    .line 151
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "a_end_time"

    .line 152
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "session_end_time"

    .line 153
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    :goto_34
    return-void

    .line 139
    :cond_35
    return-void

    :cond_36
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "onPause called before onResume"

    .line 145
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method

.method public e(Landroid/content/Context;)Z
    .registers 12

    .prologue
    const/4 v0, 0x1

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 204
    invoke-static {p1}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 205
    if-eqz v2, :cond_3b

    const-string/jumbo v3, "session_id"

    .line 209
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    if-eqz v3, :cond_3c

    const-string/jumbo v3, "a_start_time"

    .line 214
    invoke-interface {v2, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v3, "a_end_time"

    .line 215
    invoke-interface {v2, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 217
    cmp-long v2, v4, v8

    if-gtz v2, :cond_3d

    move v2, v0

    :goto_27
    if-nez v2, :cond_3f

    cmp-long v2, v6, v8

    if-nez v2, :cond_3f

    .line 219
    invoke-virtual {p0, p1}, Lu/aly/dg;->d(Landroid/content/Context;)V

    .line 223
    :goto_30
    invoke-static {p1}, Lu/aly/db;->a(Landroid/content/Context;)Lu/aly/db;

    move-result-object v1

    .line 224
    invoke-virtual {p0, p1}, Lu/aly/dg;->a(Landroid/content/Context;)Lu/aly/aj;

    move-result-object v2

    .line 225
    if-nez v2, :cond_41

    .line 229
    :goto_3a
    return v0

    .line 206
    :cond_3b
    return v1

    .line 211
    :cond_3c
    return v1

    :cond_3d
    move v2, v1

    .line 217
    goto :goto_27

    :cond_3f
    move v0, v1

    goto :goto_30

    .line 226
    :cond_41
    invoke-virtual {v1, v2}, Lu/aly/db;->bRG(Lu/aly/P;)V

    goto :goto_3a
.end method

.method public f(Landroid/content/Context;)V
    .registers 10

    .prologue
    const-wide/16 v6, 0x0

    .line 233
    invoke-static {p1}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_54

    .line 238
    invoke-virtual {p0, p1}, Lu/aly/dg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "session_id"

    .line 242
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "session_start_time"

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "session_end_time"

    .line 244
    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "a_start_time"

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "a_end_time"

    .line 246
    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 248
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo v0, "MobclickAgent"

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Restart session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/aly/O;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void

    .line 235
    :cond_54
    return-void
.end method
