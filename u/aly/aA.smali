.class public Lu/aly/aA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/Y;


# instance fields
.field public a:I

.field public b:I

.field private bwz:Landroid/content/Context;

.field public c:J

.field private final d:I

.field private e:I

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x36ee80

    .line 17
    iput v0, p0, Lu/aly/aA;->d:I

    .line 24
    iput-wide v2, p0, Lu/aly/aA;->f:J

    .line 25
    iput-wide v2, p0, Lu/aly/aA;->g:J

    .line 37
    invoke-direct {p0, p1}, Lu/aly/aA;->b(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;)Lu/aly/ar;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-static {p0}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    new-instance v1, Lu/aly/ar;

    invoke-direct {v1}, Lu/aly/ar;-><init>()V

    const-string/jumbo v2, "failed_requests "

    .line 119
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lu/aly/ar;->bYL(I)Lu/aly/ar;

    const-string/jumbo v2, "last_request_spent_ms"

    .line 120
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lu/aly/ar;->bYN(I)Lu/aly/ar;

    const-string/jumbo v2, "successful_request"

    .line 121
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lu/aly/ar;->a(I)Lu/aly/ar;

    .line 123
    return-object v1
.end method

.method private b(Landroid/content/Context;)V
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aA;->bwz:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "successful_request"

    .line 44
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/aA;->a:I

    const-string/jumbo v1, "failed_requests "

    .line 45
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/aA;->b:I

    const-string/jumbo v1, "last_request_spent_ms"

    .line 47
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/aA;->e:I

    const-string/jumbo v1, "last_request_time"

    .line 48
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lu/aly/aA;->c:J

    const-string/jumbo v1, "last_req"

    .line 50
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/aA;->f:J

    .line 51
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lu/aly/aA;->i()V

    .line 129
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lu/aly/aA;->j()V

    .line 134
    return-void
.end method

.method public bUB()J
    .registers 3

    .prologue
    .line 111
    iget-wide v0, p0, Lu/aly/aA;->f:J

    return-wide v0
.end method

.method public c()V
    .registers 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lu/aly/aA;->g()V

    .line 139
    return-void
.end method

.method public d()V
    .registers 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lu/aly/aA;->h()V

    .line 144
    return-void
.end method

.method public f()Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    iget-wide v4, p0, Lu/aly/aA;->c:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1c

    move v0, v1

    .line 59
    :goto_b
    iget-object v3, p0, Lu/aly/aA;->bwz:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/h;->g()Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v2

    .line 61
    :goto_18
    if-nez v0, :cond_20

    :goto_1a
    move v1, v2

    :cond_1b
    return v1

    :cond_1c
    move v0, v2

    .line 58
    goto :goto_b

    :cond_1e
    move v3, v1

    .line 59
    goto :goto_18

    .line 61
    :cond_20
    if-nez v3, :cond_1b

    goto :goto_1a
.end method

.method public g()V
    .registers 3

    .prologue
    .line 65
    iget v0, p0, Lu/aly/aA;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lu/aly/aA;->a:I

    .line 67
    iget-wide v0, p0, Lu/aly/aA;->f:J

    iput-wide v0, p0, Lu/aly/aA;->c:J

    .line 68
    return-void
.end method

.method public h()V
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lu/aly/aA;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lu/aly/aA;->b:I

    .line 72
    return-void
.end method

.method public i()V
    .registers 3

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/aA;->f:J

    .line 76
    return-void
.end method

.method public j()V
    .registers 5

    .prologue
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lu/aly/aA;->f:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lu/aly/aA;->e:I

    .line 80
    return-void
.end method

.method public k()V
    .registers 5

    .prologue
    .line 83
    iget-object v0, p0, Lu/aly/aA;->bwz:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "successful_request"

    iget v2, p0, Lu/aly/aA;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "failed_requests "

    iget v2, p0, Lu/aly/aA;->b:I

    .line 86
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_request_spent_ms"

    iget v2, p0, Lu/aly/aA;->e:I

    .line 87
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_request_time"

    iget-wide v2, p0, Lu/aly/aA;->c:J

    .line 88
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_req"

    iget-wide v2, p0, Lu/aly/aA;->f:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    return-void
.end method

.method public l()V
    .registers 5

    .prologue
    .line 94
    iget-object v0, p0, Lu/aly/aA;->bwz:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "first_activate_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    return-void
.end method

.method public m()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 99
    iget-wide v0, p0, Lu/aly/aA;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    .line 100
    iget-object v0, p0, Lu/aly/aA;->bwz:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "first_activate_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/aA;->g:J

    .line 103
    :cond_17
    iget-wide v0, p0, Lu/aly/aA;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public n()J
    .registers 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lu/aly/aA;->m()Z

    move-result v0

    if-nez v0, :cond_9

    iget-wide v0, p0, Lu/aly/aA;->g:J

    :goto_8
    return-wide v0

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_8
.end method
