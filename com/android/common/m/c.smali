.class public Lcom/android/common/m/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aaZ:Lcom/android/common/appService/W;

.field private aba:Ljava/lang/Boolean;

.field private abb:Z

.field private abc:Ljava/io/File;

.field private abd:J

.field private abe:Ljava/util/ArrayList;

.field private abf:Landroid/os/AsyncTask;

.field private abg:Landroid/os/ConditionVariable;

.field private abh:Lcom/android/common/m/a;

.field private abi:Lcom/android/common/d/e;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/android/common/m/c;->abh:Lcom/android/common/m/a;

    .line 28
    iput-object v1, p0, Lcom/android/common/m/c;->abf:Landroid/os/AsyncTask;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/m/c;->abe:Ljava/util/ArrayList;

    .line 31
    iput-object v1, p0, Lcom/android/common/m/c;->aaZ:Lcom/android/common/appService/W;

    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/m/c;->aba:Ljava/lang/Boolean;

    .line 34
    iput-object v1, p0, Lcom/android/common/m/c;->abi:Lcom/android/common/d/e;

    .line 35
    iput-boolean v2, p0, Lcom/android/common/m/c;->abb:Z

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/common/m/c;->abd:J

    .line 40
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/android/common/m/c;->abg:Landroid/os/ConditionVariable;

    .line 44
    iput-object p1, p0, Lcom/android/common/m/c;->aaZ:Lcom/android/common/appService/W;

    .line 45
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 46
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 47
    invoke-direct {p0}, Lcom/android/common/m/c;->aht()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/m/c;->abc:Ljava/io/File;

    .line 48
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 43
    return-void
.end method

.method private ahA()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Lcom/android/common/m/c;->ahy()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 124
    iput-object v1, p0, Lcom/android/common/m/c;->abh:Lcom/android/common/m/a;

    .line 126
    :cond_9
    iget-object v0, p0, Lcom/android/common/m/c;->abh:Lcom/android/common/m/a;

    if-eqz v0, :cond_17

    .line 127
    iget-object v0, p0, Lcom/android/common/m/c;->abh:Lcom/android/common/m/a;

    invoke-virtual {v0}, Lcom/android/common/m/a;->agX()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/m/c;->ahz(Landroid/graphics/Bitmap;)V

    .line 122
    :goto_16
    return-void

    .line 129
    :cond_17
    invoke-direct {p0, v1}, Lcom/android/common/m/c;->ahz(Landroid/graphics/Bitmap;)V

    goto :goto_16
.end method

.method static synthetic ahB(Lcom/android/common/m/c;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/android/common/m/c;->aba:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic ahC(Lcom/android/common/m/c;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/android/common/m/c;->abc:Ljava/io/File;

    return-object v0
.end method

.method static synthetic ahD(Lcom/android/common/m/c;)Landroid/os/ConditionVariable;
    .registers 2

    iget-object v0, p0, Lcom/android/common/m/c;->abg:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic ahE(Lcom/android/common/m/c;)Lcom/android/common/d/e;
    .registers 2

    iget-object v0, p0, Lcom/android/common/m/c;->abi:Lcom/android/common/d/e;

    return-object v0
.end method

.method static synthetic ahF(Lcom/android/common/m/c;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    iput-object p1, p0, Lcom/android/common/m/c;->aba:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic ahG(Lcom/android/common/m/c;Lcom/android/common/d/e;)Lcom/android/common/d/e;
    .registers 2

    iput-object p1, p0, Lcom/android/common/m/c;->abi:Lcom/android/common/d/e;

    return-object p1
.end method

.method private aht()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/android/common/m/c;->ahu()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private ahu()Lcom/android/common/appService/W;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/common/m/c;->aaZ:Lcom/android/common/appService/W;

    return-object v0
.end method

.method private ahv()Landroid/content/ContentResolver;
    .registers 2

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/android/common/m/c;->ahu()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qa()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private ahy()Z
    .registers 3

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/common/m/c;->aht()Landroid/app/Activity;

    move-result-object v0

    .line 198
    instance-of v1, v0, Lcom/android/common/ActivityBase;

    if-eqz v1, :cond_1a

    .line 199
    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/android/common/m/c;->ahu()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qq()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 203
    :cond_1a
    const/4 v0, 0x0

    return v0

    .line 200
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method private ahz(Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/common/m/c;->abe:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 96
    iget-object v0, p0, Lcom/android/common/m/c;->abe:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/m/d;

    .line 97
    invoke-interface {v0, p1}, Lcom/android/common/m/d;->ahH(Landroid/graphics/Bitmap;)V

    goto :goto_e

    .line 94
    :cond_1e
    return-void
.end method


# virtual methods
.method public ahi()V
    .registers 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/common/m/c;->ahl()Lcom/android/common/m/a;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/common/m/c;->ahl()Lcom/android/common/m/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/m/a;->agW()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 175
    :cond_10
    :goto_10
    return-void

    .line 177
    :cond_11
    invoke-virtual {p0}, Lcom/android/common/m/c;->ahl()Lcom/android/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/m/c;->abc:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/common/m/a;->ahg(Ljava/io/File;)V

    goto :goto_10
.end method

.method public ahj(Lcom/android/common/m/a;)V
    .registers 5

    .prologue
    .line 107
    const-string/jumbo v1, "ThumbnailManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setThumbnail "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_30

    const-string/jumbo v0, "null"

    :goto_14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/android/common/m/c;->abh:Lcom/android/common/m/a;

    .line 109
    invoke-direct {p0}, Lcom/android/common/m/c;->ahA()V

    .line 110
    iget-object v0, p0, Lcom/android/common/m/c;->aaZ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 111
    invoke-virtual {p0}, Lcom/android/common/m/c;->ahr()V

    .line 106
    :cond_2f
    return-void

    .line 107
    :cond_30
    invoke-virtual {p1}, Lcom/android/common/m/a;->ahe()Landroid/net/Uri;

    move-result-object v0

    goto :goto_14
.end method

.method public ahk(Lcom/android/common/d/e;)V
    .registers 8

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 61
    iget-wide v2, p0, Lcom/android/common/m/c;->abd:J

    sub-long v2, v0, v2

    .line 62
    iget-boolean v4, p0, Lcom/android/common/m/c;->abb:Z

    if-nez v4, :cond_24

    .line 63
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_22

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_22

    .line 64
    const-string/jumbo v0, "ThumbnailManager"

    const-string/jumbo v1, "In slow update mode ignore too fast thumbnail update request"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void

    .line 67
    :cond_22
    iput-wide v0, p0, Lcom/android/common/m/c;->abd:J

    .line 70
    :cond_24
    iget-object v1, p0, Lcom/android/common/m/c;->aba:Ljava/lang/Boolean;

    monitor-enter v1

    .line 71
    :try_start_27
    iget-object v0, p0, Lcom/android/common/m/c;->aba:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 72
    iput-object p1, p0, Lcom/android/common/m/c;->abi:Lcom/android/common/d/e;
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_4a

    :goto_31
    monitor-exit v1

    .line 59
    return-void

    .line 74
    :cond_33
    :try_start_33
    new-instance v0, Lcom/android/common/m/e;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/common/m/e;-><init>(Lcom/android/common/m/c;Lcom/android/common/m/e;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/common/d/e;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/common/m/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/m/c;->aba:Ljava/lang/Boolean;
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_4a

    goto :goto_31

    .line 70
    :catchall_4a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public ahl()Lcom/android/common/m/a;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/common/m/c;->abh:Lcom/android/common/m/a;

    return-object v0
.end method

.method public ahm(Landroid/os/ConditionVariable;)V
    .registers 2

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/common/m/c;->abg:Landroid/os/ConditionVariable;

    .line 192
    return-void
.end method

.method public ahn(Z)V
    .registers 5

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/common/m/c;->abb:Z

    if-eqz v0, :cond_6

    if-eqz p1, :cond_23

    .line 55
    :cond_6
    :goto_6
    const-string/jumbo v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFastUpdateThumbnail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput-boolean p1, p0, Lcom/android/common/m/c;->abb:Z

    .line 51
    return-void

    .line 53
    :cond_23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/common/m/c;->abd:J

    goto :goto_6
.end method

.method public aho(Lcom/android/common/m/d;)V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/common/m/c;->abe:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 87
    iget-object v0, p0, Lcom/android/common/m/c;->abe:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_d
    return-void
.end method

.method public ahp(Lcom/android/common/m/d;)V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/common/m/c;->abe:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public ahq()V
    .registers 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/common/m/c;->ahA()V

    .line 118
    return-void
.end method

.method public ahr()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/android/common/m/c;->ahl()Lcom/android/common/m/a;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/common/m/c;->ahl()Lcom/android/common/m/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/m/a;->agW()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 169
    :cond_11
    :goto_11
    return-void

    .line 171
    :cond_12
    new-instance v0, Lcom/android/common/m/g;

    invoke-direct {v0, p0, v1}, Lcom/android/common/m/g;-><init>(Lcom/android/common/m/c;Lcom/android/common/m/g;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/common/m/a;

    invoke-virtual {p0}, Lcom/android/common/m/c;->ahl()Lcom/android/common/m/a;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/common/m/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_11
.end method

.method public ahs()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/common/m/c;->abf:Landroid/os/AsyncTask;

    if-eqz v0, :cond_d

    .line 186
    iget-object v0, p0, Lcom/android/common/m/c;->abf:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 187
    iput-object v2, p0, Lcom/android/common/m/c;->abf:Landroid/os/AsyncTask;

    .line 184
    :cond_d
    return-void
.end method

.method public ahw()V
    .registers 4

    .prologue
    .line 140
    const-string/jumbo v0, "ThumbnailManager"

    const-string/jumbo v1, "getLastThumbnail"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/common/m/c;->aba:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 142
    const-string/jumbo v0, "ThumbnailManager"

    const-string/jumbo v1, "CreateThumbnailTask is running"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void

    .line 149
    :cond_1b
    new-instance v0, Lcom/android/common/m/f;

    invoke-direct {p0}, Lcom/android/common/m/c;->ahv()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1}, Lcom/android/common/m/f;-><init>(Lcom/android/common/m/c;ZLandroid/content/ContentResolver;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/common/m/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/m/c;->abf:Landroid/os/AsyncTask;

    .line 139
    return-void
.end method

.method public ahx()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/android/common/m/c;->abf:Landroid/os/AsyncTask;

    if-eqz v0, :cond_23

    .line 158
    iget-object v0, p0, Lcom/android/common/m/c;->abf:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_19

    .line 159
    iget-object v0, p0, Lcom/android/common/m/c;->abf:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_23

    .line 160
    :cond_19
    const-string/jumbo v0, "ThumbnailManager"

    const-string/jumbo v1, "mLoadThumbnailTask has started"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void

    .line 163
    :cond_23
    new-instance v0, Lcom/android/common/m/f;

    invoke-direct {p0}, Lcom/android/common/m/c;->ahv()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Lcom/android/common/m/f;-><init>(Lcom/android/common/m/c;ZLandroid/content/ContentResolver;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/common/m/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/m/c;->abf:Landroid/os/AsyncTask;

    .line 156
    return-void
.end method
