.class public final Lcom/umeng/analytics/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/umeng/analytics/h; = null

.field private static b:Landroid/content/Context; = null

.field private static c:Ljava/lang/String; = null

.field private static e:J = 0x0L

.field private static f:J = 0x0L

.field private static final g:Ljava/lang/String; = "mobclick_agent_user_"

.field private static final h:Ljava/lang/String; = "mobclick_agent_online_setting_"

.field private static final i:Ljava/lang/String; = "mobclick_agent_header_"

.field private static final j:Ljava/lang/String; = "mobclick_agent_update_"

.field private static final k:Ljava/lang/String; = "mobclick_agent_state_"

.field private static final l:Ljava/lang/String; = "mobclick_agent_cached_"


# instance fields
.field private d:Lcom/umeng/analytics/h$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/umeng/analytics/h;->a:Lcom/umeng/analytics/h;

    const-wide/32 v0, 0x48190800

    .line 44
    sput-wide v0, Lcom/umeng/analytics/h;->e:J

    const-wide/32 v0, 0x200000

    .line 45
    sput-wide v0, Lcom/umeng/analytics/h;->f:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/umeng/analytics/h$a;

    invoke-direct {v0, p1}, Lcom/umeng/analytics/h$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/h;->d:Lcom/umeng/analytics/h$a;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/analytics/h;
    .registers 3

    .prologue
    const-class v1, Lcom/umeng/analytics/h;

    monitor-enter v1

    .line 36
    :try_start_3
    sget-object v0, Lcom/umeng/analytics/h;->a:Lcom/umeng/analytics/h;

    if-eqz v0, :cond_b

    .line 40
    :goto_7
    sget-object v0, Lcom/umeng/analytics/h;->a:Lcom/umeng/analytics/h;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    monitor-exit v1

    return-object v0

    .line 37
    :cond_b
    :try_start_b
    new-instance v0, Lcom/umeng/analytics/h;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/analytics/h;->a:Lcom/umeng/analytics/h;
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_7

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/io/File;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 50
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    .line 54
    :cond_c
    return v2

    .line 50
    :cond_d
    sget-wide v6, Lcom/umeng/analytics/h;->f:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_17

    move v0, v1

    :goto_14
    if-nez v0, :cond_c

    .line 51
    return v1

    :cond_17
    move v0, v2

    .line 50
    goto :goto_14
.end method

.method private l()Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 176
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mobclick_agent_user_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private m()Ljava/lang/String;
    .registers 3

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mobclick_agent_header_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private n()Ljava/lang/String;
    .registers 3

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mobclick_agent_cached_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 93
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    if-nez v0, :cond_9

    .line 97
    :goto_8
    return-void

    .line 95
    :cond_9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "appkey"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_8
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 66
    :cond_6
    :goto_6
    return-void

    .line 58
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 59
    invoke-direct {p0}, Lcom/umeng/analytics/h;->l()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "au_p"

    .line 62
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "au_u"

    .line 63
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_6
.end method

.method public a([B)V
    .registers 5

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/umeng/analytics/h;->n()Ljava/lang/String;

    move-result-object v0

    .line 143
    :try_start_4
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lu/aly/bu;->bVX(Ljava/io/File;[B)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    .line 147
    :goto_12
    return-void

    .line 146
    :catch_13
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public a()[Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-direct {p0}, Lcom/umeng/analytics/h;->l()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "au_p"

    .line 70
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "au_u"

    .line 71
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    if-nez v1, :cond_16

    .line 76
    :cond_15
    return-object v3

    .line 72
    :cond_16
    if-eqz v0, :cond_15

    const/4 v2, 0x2

    .line 73
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    return-object v2
.end method

.method public b()V
    .registers 3

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/umeng/analytics/h;->l()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "au_p"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "au_u"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 108
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    if-nez v0, :cond_9

    .line 112
    :goto_8
    return-void

    .line 110
    :cond_9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "channel"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_8
.end method

.method public b([B)V
    .registers 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/umeng/analytics/h;->d:Lcom/umeng/analytics/h$a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/h$a;->a([B)V

    .line 156
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 85
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 86
    if-nez v0, :cond_a

    .line 89
    return-object v2

    :cond_a
    const-string/jumbo v1, "appkey"

    .line 87
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 100
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    if-nez v0, :cond_a

    .line 104
    return-object v2

    :cond_a
    const-string/jumbo v1, "channel"

    .line 102
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()[B
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Lcom/umeng/analytics/h;->n()Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    invoke-static {v1}, Lcom/umeng/analytics/h;->a(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 129
    :try_start_1c
    sget-object v1, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_2f
    .catchall {:try_start_1c .. :try_end_21} :catchall_38

    move-result-object v1

    .line 130
    :try_start_22
    invoke-static {v1}, Lu/aly/bu;->bVW(Ljava/io/InputStream;)[B
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_40
    .catchall {:try_start_22 .. :try_end_25} :catchall_3e

    move-result-object v0

    .line 134
    invoke-static {v1}, Lu/aly/bu;->bVZ(Ljava/io/InputStream;)V

    return-object v0

    .line 119
    :cond_2a
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 120
    return-object v2

    .line 123
    :cond_2e
    return-object v2

    .line 134
    :catch_2f
    move-exception v0

    move-object v1, v2

    .line 132
    :goto_31
    :try_start_31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3e

    .line 134
    invoke-static {v1}, Lu/aly/bu;->bVZ(Ljava/io/InputStream;)V

    .line 137
    return-object v2

    .line 135
    :catchall_38
    move-exception v0

    move-object v1, v2

    .line 134
    :goto_3a
    invoke-static {v1}, Lu/aly/bu;->bVZ(Ljava/io/InputStream;)V

    throw v0

    .line 135
    :catchall_3e
    move-exception v0

    goto :goto_3a

    .line 134
    :catch_40
    move-exception v0

    goto :goto_31
.end method

.method public f()V
    .registers 3

    .prologue
    .line 150
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/umeng/analytics/h;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 151
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/umeng/analytics/h;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 152
    return-void
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/umeng/analytics/h;->d:Lcom/umeng/analytics/h$a;

    invoke-virtual {v0}, Lcom/umeng/analytics/h$a;->a()Z

    move-result v0

    return v0
.end method

.method public h()Lcom/umeng/analytics/h$a;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/umeng/analytics/h;->d:Lcom/umeng/analytics/h$a;

    return-object v0
.end method

.method public i()Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 180
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mobclick_agent_header_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public j()Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 184
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mobclick_agent_update_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public k()Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 188
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mobclick_agent_state_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
