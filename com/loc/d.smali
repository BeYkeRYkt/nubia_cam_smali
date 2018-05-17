.class public Lcom/loc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bdg:Lcom/loc/d;


# instance fields
.field private bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field private bdi:Z

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/d;->bdg:Lcom/loc/d;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iput-wide v2, p0, Lcom/loc/d;->c:J

    iput-wide v2, p0, Lcom/loc/d;->d:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/d;->bdi:Z

    return-void
.end method

.method public static declared-synchronized a()Lcom/loc/d;
    .registers 2

    const-class v1, Lcom/loc/d;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/loc/d;->bdg:Lcom/loc/d;

    if-eqz v0, :cond_b

    :goto_7
    sget-object v0, Lcom/loc/d;->bdg:Lcom/loc/d;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    new-instance v0, Lcom/loc/d;

    invoke-direct {v0}, Lcom/loc/d;-><init>()V

    sput-object v0, Lcom/loc/d;->bdg:Lcom/loc/d;
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_7

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private bvD(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 8

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-object p1

    :cond_8
    iget-boolean v1, p0, Lcom/loc/d;->bdi:Z

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/loc/bR;->bDB()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/loc/X;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHS()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Lcom/loc/bR;->bDC()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_24

    const/4 v0, 0x1

    :cond_24
    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHw()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_32

    :cond_2d
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHx(I)V

    goto :goto_7

    :cond_32
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHw()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2d

    goto :goto_7
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/loc/d;->bdi:Z

    return-void
.end method

.method public declared-synchronized b()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/d;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/d;->d:J
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bvC(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 14

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_9
    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/d;->c:J

    iput-object p1, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_18e

    monitor-exit p0

    return-object v0

    :cond_15
    :try_start_15
    invoke-static {p1}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHS()J

    move-result-wide v0

    iget-object v2, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHS()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_35

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getAccuracy()F
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_18e

    move-result v0

    const/high16 v1, 0x43960000    # 300.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_35

    monitor-exit p0

    return-object p1

    :cond_35
    :try_start_35
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ac

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIC()I

    move-result v0

    iget-object v1, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIC()I

    move-result v1

    if-ne v0, v1, :cond_b8

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIz()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    :cond_5e
    iget-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {p1, v0}, Lcom/loc/X;->bxh(Lcom/autonavi/aps/amapapi/model/AmapLoc;Lcom/autonavi/aps/amapapi/model/AmapLoc;)F

    move-result v1

    iget-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getAccuracy()F

    move-result v2

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getAccuracy()F

    move-result v3

    sub-float v4, v3, v2

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/loc/d;->c:J

    sub-long v8, v6, v8

    const/high16 v0, 0x42ca0000    # 101.0f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_88

    const v0, 0x43958000    # 299.0f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_da

    const/4 v0, 0x1

    :goto_86
    if-nez v0, :cond_96

    :cond_88
    const v0, 0x43958000    # 299.0f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_f7

    const v0, 0x43958000    # 299.0f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_f7

    :cond_96
    iget-wide v0, p0, Lcom/loc/d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_dc

    iput-wide v6, p0, Lcom/loc/d;->d:J

    :cond_a0
    iget-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {p0, v0}, Lcom/loc/d;->bvD(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_aa
    .catchall {:try_start_35 .. :try_end_aa} :catchall_18e

    monitor-exit p0

    return-object v0

    :cond_ac
    :try_start_ac
    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/d;->c:J

    iput-object p1, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_18e

    monitor-exit p0

    return-object v0

    :cond_b8
    :try_start_b8
    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/d;->c:J

    iput-object p1, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_c2
    .catchall {:try_start_b8 .. :try_end_c2} :catchall_18e

    monitor-exit p0

    return-object v0

    :cond_c4
    :try_start_c4
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/d;->c:J

    iput-object p1, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_d8
    .catchall {:try_start_c4 .. :try_end_d8} :catchall_18e

    monitor-exit p0

    return-object v0

    :cond_da
    const/4 v0, 0x0

    goto :goto_86

    :cond_dc
    :try_start_dc
    iget-wide v0, p0, Lcom/loc/d;->d:J

    sub-long v0, v6, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f5

    const/4 v0, 0x1

    :goto_e7
    if-nez v0, :cond_a0

    iput-wide v6, p0, Lcom/loc/d;->c:J

    iput-object p1, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/d;->d:J

    iget-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_f3
    .catchall {:try_start_dc .. :try_end_f3} :catchall_18e

    monitor-exit p0

    return-object v0

    :cond_f5
    const/4 v0, 0x0

    goto :goto_e7

    :cond_f7
    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_110

    const v0, 0x43958000    # 299.0f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_110

    :try_start_104
    iput-wide v6, p0, Lcom/loc/d;->c:J

    iput-object p1, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/d;->d:J

    iget-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_10e
    .catchall {:try_start_104 .. :try_end_10e} :catchall_18e

    monitor-exit p0

    return-object v0

    :cond_110
    const v0, 0x43958000    # 299.0f

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_11b

    const-wide/16 v10, 0x0

    :try_start_119
    iput-wide v10, p0, Lcom/loc/d;->d:J

    :cond_11b
    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_159

    float-to-double v0, v1

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v10

    if-lez v0, :cond_159

    const/high16 v0, -0x3c6a0000    # -300.0f

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_13d

    iget-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {p0, v0}, Lcom/loc/d;->bvD(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_13b
    .catchall {:try_start_119 .. :try_end_13b} :catchall_18e

    monitor-exit p0

    return-object v0

    :cond_13d
    div-float v0, v2, v3

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_14d

    :try_start_145
    iput-wide v6, p0, Lcom/loc/d;->c:J

    iput-object p1, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_14b
    .catchall {:try_start_145 .. :try_end_14b} :catchall_18e

    monitor-exit p0

    return-object v0

    :cond_14d
    :try_start_14d
    iget-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {p0, v0}, Lcom/loc/d;->bvD(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_157
    .catchall {:try_start_14d .. :try_end_157} :catchall_18e

    monitor-exit p0

    return-object v0

    :cond_159
    const/high16 v0, 0x43960000    # 300.0f

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_182

    const-wide/16 v0, 0x7530

    cmp-long v0, v8, v0

    if-gez v0, :cond_174

    const/4 v0, 0x1

    :goto_166
    if-nez v0, :cond_176

    :try_start_168
    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/d;->c:J

    iput-object p1, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_172
    .catchall {:try_start_168 .. :try_end_172} :catchall_18e

    monitor-exit p0

    return-object v0

    :cond_174
    const/4 v0, 0x0

    goto :goto_166

    :cond_176
    :try_start_176
    iget-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {p0, v0}, Lcom/loc/d;->bvD(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_180
    .catchall {:try_start_176 .. :try_end_180} :catchall_18e

    monitor-exit p0

    return-object v0

    :cond_182
    :try_start_182
    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/d;->c:J

    iput-object p1, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/d;->bdh:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_18c
    .catchall {:try_start_182 .. :try_end_18c} :catchall_18e

    monitor-exit p0

    return-object v0

    :catchall_18e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bvE(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 2

    return-object p1
.end method
