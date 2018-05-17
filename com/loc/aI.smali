.class public Lcom/loc/aI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field b:Z

.field private bfX:Landroid/content/Context;

.field private bfY:Landroid/telephony/TelephonyManager;

.field private bfZ:Ljava/lang/Object;

.field private bga:Lorg/json/JSONObject;

.field private bgb:Landroid/telephony/PhoneStateListener;

.field private bgc:Landroid/telephony/CellLocation;

.field bgd:Landroid/os/HandlerThread;

.field private bge:Z

.field private bgf:Ljava/lang/Object;

.field private bgg:Landroid/telephony/PhoneStateListener;

.field private d:I

.field private e:Ljava/util/ArrayList;

.field private f:I

.field private i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/loc/aI;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/aI;->e:Ljava/util/ArrayList;

    const/16 v0, -0x71

    iput v0, p0, Lcom/loc/aI;->f:I

    iput-object v2, p0, Lcom/loc/aI;->bfY:Landroid/telephony/TelephonyManager;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/aI;->i:J

    iput-object v2, p0, Lcom/loc/aI;->bgd:Landroid/os/HandlerThread;

    iput-boolean v3, p0, Lcom/loc/aI;->bge:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/aI;->bgf:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/loc/aI;->b:Z

    iput-object v2, p0, Lcom/loc/aI;->bgg:Landroid/telephony/PhoneStateListener;

    if-eqz p1, :cond_2b

    :cond_2b
    iput-object p2, p0, Lcom/loc/aI;->bga:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/loc/aI;->bfX:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/aI;->bfY:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_34

    :goto_33
    return-void

    :cond_34
    iget-object v0, p0, Lcom/loc/aI;->bfX:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-static {v0, v1}, Lcom/loc/X;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/loc/aI;->bfY:Landroid/telephony/TelephonyManager;

    goto :goto_33
.end method

.method private a(Ljava/util/List;)Landroid/telephony/CellLocation;
    .registers 15

    if-nez p1, :cond_4

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v6, v0

    move-object v7, v3

    move v0, v1

    move-object v1, v2

    :goto_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v6, v2, :cond_22

    move v8, v0

    move-object v0, v7

    :goto_1e
    const/4 v2, 0x4

    if-eq v8, v2, :cond_124

    :goto_21
    return-object v0

    :cond_22
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6b

    :try_start_28
    const-string/jumbo v2, "android.telephony.CellInfoGsm"

    invoke-virtual {v9, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v2, "android.telephony.CellInfoWcdma"

    invoke-virtual {v9, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v2, "android.telephony.CellInfoLte"

    invoke-virtual {v9, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v2, "android.telephony.CellInfoCdma"

    invoke-virtual {v9, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v2, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6f

    invoke-virtual {v5, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_76

    invoke-virtual {v8, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7c

    invoke-virtual {v10, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_5a} :catch_127

    move-result v0

    if-nez v0, :cond_82

    const/4 v8, 0x0

    move-object v0, v2

    :goto_5f
    if-gtz v8, :cond_88

    :cond_61
    move-object v2, v1

    move-object v3, v7

    move v1, v8

    :goto_64
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-object v7, v3

    move v0, v1

    move-object v1, v2

    goto :goto_16

    :cond_6b
    move-object v2, v1

    move-object v3, v7

    move v1, v0

    goto :goto_64

    :cond_6f
    const/4 v2, 0x1

    :try_start_70
    invoke-virtual {v4, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_74
    move v8, v2

    goto :goto_5f

    :cond_76
    const/4 v2, 0x2

    invoke-virtual {v5, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_74

    :cond_7c
    const/4 v2, 0x3

    invoke-virtual {v8, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_74

    :cond_82
    const/4 v2, 0x4

    invoke-virtual {v10, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_86} :catch_12d

    move-result-object v0

    goto :goto_74

    :cond_88
    :try_start_88
    const-string/jumbo v2, "getCellIdentity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/loc/br;->bBh(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_61

    const/4 v0, 0x4

    if-eq v8, v0, :cond_ba

    const/4 v0, 0x3

    if-eq v8, v0, :cond_f6

    const-string/jumbo v0, "getLac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/loc/br;->bBi(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const-string/jumbo v0, "getCid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/loc/br;->bBi(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_b3} :catch_132

    :try_start_b3
    invoke-virtual {v0, v3, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_b6} :catch_113

    :goto_b6
    move-object v7, v0

    :goto_b7
    move-object v0, v7

    goto/16 :goto_1e

    :cond_ba
    :try_start_ba
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_ba .. :try_end_bf} :catch_132

    :try_start_bf
    const-string/jumbo v1, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/loc/br;->bBi(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v4

    const-string/jumbo v1, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/loc/br;->bBi(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v5

    const-string/jumbo v1, "getBasestationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/loc/br;->bBi(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    const-string/jumbo v3, "getLongitude"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v10}, Lcom/loc/br;->bBi(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const-string/jumbo v10, "getLatitude"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Lcom/loc/br;->bBi(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V
    :try_end_f4
    .catch Ljava/lang/Throwable; {:try_start_bf .. :try_end_f4} :catch_136

    move-object v1, v0

    goto :goto_b7

    :cond_f6
    :try_start_f6
    const-string/jumbo v0, "getTac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/loc/br;->bBi(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const-string/jumbo v0, "getCi"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/loc/br;->bBi(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_10f
    .catch Ljava/lang/Throwable; {:try_start_f6 .. :try_end_10f} :catch_132

    :try_start_10f
    invoke-virtual {v0, v3, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_112
    .catch Ljava/lang/Throwable; {:try_start_10f .. :try_end_112} :catch_113

    goto :goto_b6

    :catch_113
    move-exception v2

    move-object v7, v0

    move-object v0, v2

    move-object v2, v1

    move v1, v8

    :goto_118
    const-string/jumbo v3, "CgiManager"

    const-string/jumbo v4, "getCgi"

    invoke-static {v0, v3, v4}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v7

    goto/16 :goto_64

    :cond_124
    move-object v0, v1

    goto/16 :goto_21

    :catch_127
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move v1, v0

    move-object v0, v12

    goto :goto_118

    :catch_12d
    move-exception v0

    move v12, v2

    move-object v2, v1

    move v1, v12

    goto :goto_118

    :catch_132
    move-exception v0

    move-object v2, v1

    move v1, v8

    goto :goto_118

    :catch_136
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move v1, v8

    goto :goto_118
.end method

.method private a(I)V
    .registers 5

    const/16 v0, -0x71

    if-eq p1, v0, :cond_c

    iput p1, p0, Lcom/loc/aI;->f:I

    iget v0, p0, Lcom/loc/aI;->d:I

    packed-switch v0, :pswitch_data_30

    :cond_b
    :goto_b
    return-void

    :cond_c
    iput v0, p0, Lcom/loc/aI;->f:I

    return-void

    :pswitch_f
    iget-object v0, p0, Lcom/loc/aI;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    :try_start_17
    iget-object v0, p0, Lcom/loc/aI;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/am;

    iget v1, p0, Lcom/loc/aI;->f:I

    iput v1, v0, Lcom/loc/am;->j:I
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_24} :catch_25

    goto :goto_b

    :catch_25
    move-exception v0

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "hdlCgiSigStrenChange"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method private bzA(Landroid/telephony/CellLocation;Z)V
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/loc/aI;->bfY:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/aI;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p1}, Lcom/loc/aI;->bzw(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    iput v0, p0, Lcom/loc/aI;->d:I

    iget-object v0, p0, Lcom/loc/aI;->e:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/loc/aI;->bzC(Landroid/telephony/CellLocation;)Lcom/loc/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_2a

    iget-object v0, p0, Lcom/loc/aI;->bfY:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2b

    :cond_28
    return-void

    :cond_29
    return-void

    :cond_2a
    return-void

    :cond_2b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_35
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3c

    return-void

    :cond_3c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/loc/aI;->bzx(II)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-direct {p0, v0}, Lcom/loc/aI;->bzD(Landroid/telephony/NeighboringCellInfo;)Lcom/loc/am;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v2, p0, Lcom/loc/aI;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    iget-object v2, p0, Lcom/loc/aI;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35
.end method

.method private bzB(Landroid/telephony/CellLocation;Z)V
    .registers 9

    const v5, 0x7fffffff

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8c

    iget-object v0, p0, Lcom/loc/aI;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/loc/X;->c()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_8d

    :try_start_13
    iget-object v0, p0, Lcom/loc/aI;->bfZ:Ljava/lang/Object;

    if-nez v0, :cond_8e

    :cond_17
    invoke-virtual {p0, p1}, Lcom/loc/aI;->bzw(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_d1

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/aI;->d:I

    iget-object v0, p0, Lcom/loc/aI;->bfY:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/loc/X;->bxd(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/loc/am;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/loc/am;-><init>(I)V

    const/4 v4, 0x0

    aget-object v4, v0, v4

    iput-object v4, v3, Lcom/loc/am;->a:Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    iput-object v0, v3, Lcom/loc/am;->b:Ljava/lang/String;

    const-string/jumbo v0, "getSystemId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/loc/br;->bBi(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v3, Lcom/loc/am;->g:I

    const-string/jumbo v0, "getNetworkId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/loc/br;->bBi(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v3, Lcom/loc/am;->bfm:I

    const-string/jumbo v0, "getBaseStationId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/loc/br;->bBi(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v3, Lcom/loc/am;->bfn:I

    iget v0, p0, Lcom/loc/aI;->f:I

    iput v0, v3, Lcom/loc/am;->j:I

    const-string/jumbo v0, "getBaseStationLatitude"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/loc/br;->bBi(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v3, Lcom/loc/am;->e:I

    const-string/jumbo v0, "getBaseStationLongitude"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/loc/br;->bBi(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v3, Lcom/loc/am;->f:I

    iget v0, v3, Lcom/loc/am;->e:I

    if-gez v0, :cond_d2

    :cond_7a
    const/4 v0, 0x0

    iput v0, v3, Lcom/loc/am;->e:I

    const/4 v0, 0x0

    iput v0, v3, Lcom/loc/am;->f:I

    move v2, v1

    :cond_81
    :goto_81
    if-eqz v2, :cond_83

    :cond_83
    iget-object v0, p0, Lcom/loc/aI;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_88} :catch_bb

    move-result v0

    if-eqz v0, :cond_e9

    :goto_8b
    return-void

    :cond_8c
    return-void

    :cond_8d
    return-void

    :cond_8e
    :try_start_8e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "mGsmCellLoc"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v3

    if-eqz v3, :cond_ab

    :goto_9f
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    if-nez v0, :cond_c6

    :cond_a7
    :goto_a7
    move v0, v1

    :goto_a8
    if-eqz v0, :cond_17

    return-void

    :cond_ab
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_af} :catch_b0
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_af} :catch_bb

    goto :goto_9f

    :catch_b0
    move-exception v0

    :try_start_b1
    const-string/jumbo v3, "CgiManager"

    const-string/jumbo v4, "hdlCdmaLocChange1"

    invoke-static {v0, v3, v4}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_ba} :catch_bb

    goto :goto_a7

    :catch_bb
    move-exception v0

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "hdlCdmaLocChange"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    :cond_c6
    :try_start_c6
    invoke-virtual {p0, v0}, Lcom/loc/aI;->bzw(Landroid/telephony/CellLocation;)Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-direct {p0, v0, p2}, Lcom/loc/aI;->bzA(Landroid/telephony/CellLocation;Z)V
    :try_end_cf
    .catch Ljava/lang/Throwable; {:try_start_c6 .. :try_end_cf} :catch_b0
    .catch Ljava/lang/Throwable; {:try_start_c6 .. :try_end_cf} :catch_bb

    move v0, v2

    goto :goto_a8

    :cond_d1
    return-void

    :cond_d2
    :try_start_d2
    iget v0, v3, Lcom/loc/am;->f:I

    if-ltz v0, :cond_7a

    iget v0, v3, Lcom/loc/am;->e:I

    if-eq v0, v5, :cond_7a

    iget v0, v3, Lcom/loc/am;->f:I

    if-eq v0, v5, :cond_7a

    iget v0, v3, Lcom/loc/am;->e:I

    iget v4, v3, Lcom/loc/am;->f:I

    if-ne v0, v4, :cond_81

    iget v0, v3, Lcom/loc/am;->e:I

    if-gtz v0, :cond_7a

    goto :goto_81

    :cond_e9
    iget-object v0, p0, Lcom/loc/aI;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ee
    .catch Ljava/lang/Throwable; {:try_start_d2 .. :try_end_ee} :catch_bb

    goto :goto_8b
.end method

.method private bzC(Landroid/telephony/CellLocation;)Lcom/loc/am;
    .registers 6

    const/4 v3, 0x1

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    new-instance v0, Lcom/loc/am;

    invoke-direct {v0, v3}, Lcom/loc/am;-><init>(I)V

    iget-object v1, p0, Lcom/loc/aI;->bfY:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Lcom/loc/X;->bxd(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/loc/am;->a:Ljava/lang/String;

    aget-object v1, v1, v3

    iput-object v1, v0, Lcom/loc/am;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    iput v1, v0, Lcom/loc/am;->c:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    iput v1, v0, Lcom/loc/am;->d:I

    iget v1, p0, Lcom/loc/aI;->f:I

    iput v1, v0, Lcom/loc/am;->j:I

    return-object v0
.end method

.method private bzD(Landroid/telephony/NeighboringCellInfo;)Lcom/loc/am;
    .registers 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/loc/X;->c()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3b

    :try_start_8
    new-instance v0, Lcom/loc/am;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/loc/am;-><init>(I)V

    iget-object v1, p0, Lcom/loc/aI;->bfY:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Lcom/loc/X;->bxd(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/loc/am;->a:Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/loc/am;->b:Ljava/lang/String;

    const-string/jumbo v1, "getLac"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/loc/br;->bBi(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/loc/am;->c:I

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    iput v1, v0, Lcom/loc/am;->d:I

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v1

    invoke-static {v1}, Lcom/loc/X;->a(I)I

    move-result v1

    iput v1, v0, Lcom/loc/am;->j:I
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_3a} :catch_3c

    return-object v0

    :cond_3b
    return-object v3

    :catch_3c
    move-exception v0

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "getGsm"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private bzE()V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/loc/aI;->bga:Lorg/json/JSONObject;

    if-nez v2, :cond_9

    :cond_6
    :goto_6
    if-nez v0, :cond_2f

    :goto_8
    return-void

    :cond_9
    :try_start_9
    const-string/jumbo v3, "cellupdate"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "cellupdate"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1f} :catch_24

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_6

    :catch_24
    move-exception v1

    const-string/jumbo v2, "CgiManager"

    const-string/jumbo v3, "updateCgi1"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_2f
    :try_start_2f
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_32} :catch_39

    :goto_32
    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/aI;->i:J

    goto :goto_8

    :catch_39
    move-exception v0

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "updateCgi"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method private bzF()V
    .registers 6

    const/16 v4, 0x10

    const/4 v0, 0x0

    new-instance v1, Lcom/loc/cp;

    invoke-direct {v1, p0}, Lcom/loc/cp;-><init>(Lcom/loc/aI;)V

    iput-object v1, p0, Lcom/loc/aI;->bgb:Landroid/telephony/PhoneStateListener;

    const-string/jumbo v1, "android.telephony.PhoneStateListener"

    const-string/jumbo v2, ""

    invoke-static {}, Lcom/loc/X;->c()I

    move-result v2

    const/4 v3, 0x7

    if-lt v2, v3, :cond_31

    const-string/jumbo v2, "LISTEN_SIGNAL_STRENGTHS"

    :try_start_1a
    invoke-static {v1, v2}, Lcom/loc/br;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_3b

    move-result v0

    :goto_1e
    if-eqz v0, :cond_3d

    :try_start_20
    iget-object v1, p0, Lcom/loc/aI;->bfY:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/loc/aI;->bgb:Landroid/telephony/PhoneStateListener;

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_29} :catch_45

    :goto_29
    :try_start_29
    invoke-static {}, Lcom/loc/aI;->k()I
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_5c

    move-result v0

    packed-switch v0, :pswitch_data_80

    :goto_30
    return-void

    :cond_31
    const-string/jumbo v2, "LISTEN_SIGNAL_STRENGTH"

    :try_start_34
    invoke-static {v1, v2}, Lcom/loc/br;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_37} :catch_39

    move-result v0

    goto :goto_1e

    :catch_39
    move-exception v1

    goto :goto_1e

    :catch_3b
    move-exception v1

    goto :goto_1e

    :cond_3d
    iget-object v0, p0, Lcom/loc/aI;->bfY:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/loc/aI;->bgb:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_29

    :catch_45
    move-exception v0

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "initPhoneStateListener1"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    :pswitch_50
    :try_start_50
    iget-object v0, p0, Lcom/loc/aI;->bfX:Landroid/content/Context;

    const-string/jumbo v1, "phone_msim"

    invoke-static {v0, v1}, Lcom/loc/X;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aI;->bfZ:Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_5b} :catch_5c

    goto :goto_30

    :catch_5c
    move-exception v0

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "initPhoneStateListener"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    :pswitch_67
    :try_start_67
    iget-object v0, p0, Lcom/loc/aI;->bfX:Landroid/content/Context;

    const-string/jumbo v1, "phone2"

    invoke-static {v0, v1}, Lcom/loc/X;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aI;->bfZ:Ljava/lang/Object;

    goto :goto_30

    :pswitch_73
    iget-object v0, p0, Lcom/loc/aI;->bfX:Landroid/content/Context;

    const-string/jumbo v1, "phone2"

    invoke-static {v0, v1}, Lcom/loc/X;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aI;->bfZ:Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_7e} :catch_5c

    goto :goto_30

    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_73
        :pswitch_50
        :pswitch_67
    .end packed-switch
.end method

.method private bzG()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/aI;->bgc:Landroid/telephony/CellLocation;

    const/16 v0, 0x9

    iput v0, p0, Lcom/loc/aI;->d:I

    iget-object v0, p0, Lcom/loc/aI;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic bzI(Lcom/loc/aI;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/loc/aI;->bgf:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic bzJ(Lcom/loc/aI;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/loc/aI;->bge:Z

    return v0
.end method

.method static synthetic bzK(Lcom/loc/aI;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/aI;->bzF()V

    return-void
.end method

.method static synthetic bzL(Lcom/loc/aI;)Landroid/telephony/PhoneStateListener;
    .registers 2

    iget-object v0, p0, Lcom/loc/aI;->bgb:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic bzM(Lcom/loc/aI;)Landroid/telephony/TelephonyManager;
    .registers 2

    iget-object v0, p0, Lcom/loc/aI;->bfY:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic bzN(Lcom/loc/aI;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;
    .registers 2

    iput-object p1, p0, Lcom/loc/aI;->bgb:Landroid/telephony/PhoneStateListener;

    return-object p1
.end method

.method static synthetic bzO(Lcom/loc/aI;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    .registers 2

    iput-object p1, p0, Lcom/loc/aI;->bgc:Landroid/telephony/CellLocation;

    return-object p1
.end method

.method static synthetic bzP(Lcom/loc/aI;)Landroid/telephony/PhoneStateListener;
    .registers 2

    iget-object v0, p0, Lcom/loc/aI;->bgg:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic bzQ(Lcom/loc/aI;)I
    .registers 2

    iget v0, p0, Lcom/loc/aI;->d:I

    return v0
.end method

.method static synthetic bzR(Lcom/loc/aI;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/loc/aI;->a(I)V

    return-void
.end method

.method static synthetic bzS(Lcom/loc/aI;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/aI;->bzG()V

    return-void
.end method

.method static synthetic bzT(Lcom/loc/aI;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/aI;->bzE()V

    return-void
.end method

.method private bzx(II)Z
    .registers 7

    const v3, 0xffff

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, v2, :cond_a

    :cond_8
    move v0, v1

    :goto_9
    return v0

    :cond_a
    if-eqz p1, :cond_8

    if-gt p1, v3, :cond_8

    if-eq p2, v2, :cond_8

    if-eqz p2, :cond_8

    if-eq p2, v3, :cond_8

    const v2, 0xfffffff

    if-ge p2, v2, :cond_8

    goto :goto_9
.end method

.method private declared-synchronized bzz(ZZ)Landroid/telephony/CellLocation;
    .registers 6

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    invoke-static {}, Lcom/loc/X;->a()J

    iput-boolean p1, p0, Lcom/loc/aI;->b:Z

    iget-boolean v0, p0, Lcom/loc/aI;->b:Z

    if-eqz v0, :cond_24

    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/loc/aI;->bgc:Landroid/telephony/CellLocation;

    invoke-virtual {p0, v0}, Lcom/loc/aI;->bzw(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/loc/aI;->b:Z

    iget-object v1, p0, Lcom/loc/aI;->bgc:Landroid/telephony/CellLocation;

    iget-object v2, p0, Lcom/loc/aI;->bfX:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/loc/X;->bxe(ZLandroid/telephony/CellLocation;Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_52

    :goto_20
    iget-object v0, p0, Lcom/loc/aI;->bgc:Landroid/telephony/CellLocation;
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_3b

    monitor-exit p0

    return-object v0

    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/loc/aI;->bfY:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/loc/aI;->l()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loc/aI;->bzw(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-eqz v1, :cond_3e

    :goto_32
    invoke-virtual {p0, v0}, Lcom/loc/aI;->bzw(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-eqz v1, :cond_b

    iput-object v0, p0, Lcom/loc/aI;->bgc:Landroid/telephony/CellLocation;
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_3b

    goto :goto_b

    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3e
    :try_start_3e
    invoke-direct {p0}, Lcom/loc/aI;->m()Landroid/telephony/CellLocation;
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3b

    move-result-object v0

    goto :goto_32

    :cond_43
    monitor-exit p0

    return-object v2

    :pswitch_45
    :try_start_45
    iget-object v0, p0, Lcom/loc/aI;->bgc:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0, p2}, Lcom/loc/aI;->bzA(Landroid/telephony/CellLocation;Z)V

    goto :goto_20

    :pswitch_4b
    iget-object v0, p0, Lcom/loc/aI;->bgc:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0, p2}, Lcom/loc/aI;->bzB(Landroid/telephony/CellLocation;Z)V
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_3b

    goto :goto_20

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_45
        :pswitch_4b
    .end packed-switch
.end method

.method public static k()I
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "android.telephony.MSimTelephonyManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_7} :catch_15

    const/4 v0, 0x1

    :goto_8
    if-eqz v0, :cond_b

    :goto_a
    return v0

    :cond_b
    :try_start_b
    const-string/jumbo v1, "android.telephony.TelephonyManager2"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_11} :catch_13

    const/4 v0, 0x2

    goto :goto_a

    :catch_13
    move-exception v1

    goto :goto_a

    :catch_15
    move-exception v1

    goto :goto_8
.end method

.method private l()Landroid/telephony/CellLocation;
    .registers 7

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/loc/aI;->bfY:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_5b

    :try_start_5
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_5c

    move-result-object v0

    move-object v1, v0

    :goto_a
    invoke-virtual {p0, v1}, Lcom/loc/aI;->bzw(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_5f

    :try_start_10
    const-string/jumbo v0, "getAllCellInfo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/loc/br;->bBh(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/loc/aI;->a(Ljava/util/List;)Landroid/telephony/CellLocation;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_1f} :catch_75
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1f} :catch_73

    move-result-object v1

    :goto_20
    invoke-virtual {p0, v1}, Lcom/loc/aI;->bzw(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_60

    :try_start_26
    const-string/jumbo v0, "getCellLocationExt"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v0, v3}, Lcom/loc/br;->bBh(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/NoSuchMethodException; {:try_start_26 .. :try_end_37} :catch_71
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_37} :catch_6f

    move-result-object v0

    if-nez v0, :cond_61

    :goto_3a
    invoke-virtual {p0, v1}, Lcom/loc/aI;->bzw(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_65

    :try_start_40
    const-string/jumbo v0, "getCellLocationGemini"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v0, v3}, Lcom/loc/br;->bBh(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catch Ljava/lang/NoSuchMethodException; {:try_start_40 .. :try_end_51} :catch_6d
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_51} :catch_6b

    move-result-object v0

    if-nez v0, :cond_66

    :goto_54
    invoke-virtual {p0, v1}, Lcom/loc/aI;->bzw(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_6a

    return-object v1

    :cond_5b
    return-object v0

    :catch_5c
    move-exception v1

    move-object v1, v0

    goto :goto_a

    :cond_5f
    return-object v1

    :cond_60
    return-object v1

    :cond_61
    :try_start_61
    check-cast v0, Landroid/telephony/CellLocation;
    :try_end_63
    .catch Ljava/lang/NoSuchMethodException; {:try_start_61 .. :try_end_63} :catch_71
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_63} :catch_6f

    move-object v1, v0

    goto :goto_3a

    :cond_65
    return-object v1

    :cond_66
    :try_start_66
    check-cast v0, Landroid/telephony/CellLocation;
    :try_end_68
    .catch Ljava/lang/NoSuchMethodException; {:try_start_66 .. :try_end_68} :catch_6d
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_68} :catch_6b

    move-object v1, v0

    goto :goto_54

    :cond_6a
    return-object v1

    :catch_6b
    move-exception v0

    goto :goto_54

    :catch_6d
    move-exception v0

    goto :goto_54

    :catch_6f
    move-exception v0

    goto :goto_3a

    :catch_71
    move-exception v0

    goto :goto_3a

    :catch_73
    move-exception v0

    goto :goto_20

    :catch_75
    move-exception v0

    goto :goto_20
.end method

.method private m()Landroid/telephony/CellLocation;
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/aI;->bfZ:Ljava/lang/Object;

    if-eqz v0, :cond_14

    :try_start_5
    invoke-direct {p0}, Lcom/loc/aI;->n()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    move-object v0, v1

    :cond_10
    :goto_10
    if-nez v0, :cond_99

    :goto_12
    move-object v0, v1

    :goto_13
    return-object v0

    :cond_14
    return-object v1

    :cond_15
    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "getCellLocation"
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1c} :catch_64

    const/4 v0, 0x0

    :try_start_1d
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v0}, Lcom/loc/br;->bBh(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1d .. :try_end_22} :catch_a3
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_22} :catch_3d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_22} :catch_64

    move-result-object v2

    :goto_23
    if-eqz v2, :cond_49

    :goto_25
    if-eqz v2, :cond_6f

    :goto_27
    move-object v0, v2

    :goto_28
    if-nez v0, :cond_10

    :try_start_2a
    const-string/jumbo v0, "getAllCellInfo"
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2d} :catch_64

    const/4 v2, 0x0

    :try_start_2e
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/loc/br;->bBh(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2e .. :try_end_36} :catch_9d
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_36} :catch_8d
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_36} :catch_64

    :goto_36
    :try_start_36
    invoke-direct {p0, v0}, Lcom/loc/aI;->a(Ljava/util/List;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_10

    :catch_3d
    move-exception v0

    const-string/jumbo v2, "CgiManager"

    const-string/jumbo v5, "getSim2Cgi15"

    invoke-static {v0, v2, v5}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_47} :catch_64

    :goto_47
    move-object v2, v1

    goto :goto_23

    :cond_49
    const/4 v0, 0x1

    :try_start_4a
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v3, v4, v0}, Lcom/loc/br;->bBh(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4a .. :try_end_57} :catch_a1
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_57} :catch_59
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_57} :catch_64

    move-result-object v2

    goto :goto_25

    :catch_59
    move-exception v0

    :try_start_5a
    const-string/jumbo v4, "CgiManager"

    const-string/jumbo v5, "getSim2Cgi14"

    invoke-static {v0, v4, v5}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_63} :catch_64

    goto :goto_25

    :catch_64
    move-exception v0

    const-string/jumbo v2, "CgiManager"

    const-string/jumbo v3, "getSim2Cgi"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_6f
    :try_start_6f
    const-string/jumbo v0, "getCellLocationGemini"
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_72} :catch_64

    const/4 v4, 0x1

    :try_start_73
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v0, v4}, Lcom/loc/br;->bBh(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_80
    .catch Ljava/lang/NoSuchMethodException; {:try_start_73 .. :try_end_80} :catch_9f
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_80} :catch_82
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_80} :catch_64

    move-result-object v0

    goto :goto_28

    :catch_82
    move-exception v0

    :try_start_83
    const-string/jumbo v4, "CgiManager"

    const-string/jumbo v5, "getSim2Cgi13"

    invoke-static {v0, v4, v5}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    :catch_8d
    move-exception v0

    const-string/jumbo v2, "CgiManager"

    const-string/jumbo v3, "getSim2Cgi1"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_97
    move-object v0, v1

    goto :goto_36

    :cond_99
    check-cast v0, Landroid/telephony/CellLocation;
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_9b} :catch_64

    goto/16 :goto_13

    :catch_9d
    move-exception v0

    goto :goto_97

    :catch_9f
    move-exception v0

    goto :goto_27

    :catch_a1
    move-exception v0

    goto :goto_25

    :catch_a3
    move-exception v0

    goto :goto_47
.end method

.method private n()Ljava/lang/Class;
    .registers 5

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {}, Lcom/loc/aI;->k()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    move-object v0, v1

    :goto_d
    :try_start_d
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_1e

    move-result-object v1

    :goto_11
    return-object v1

    :pswitch_12
    const-string/jumbo v0, "android.telephony.MSimTelephonyManager"

    goto :goto_d

    :pswitch_16
    const-string/jumbo v0, "android.telephony.TelephonyManager2"

    goto :goto_d

    :pswitch_1a
    const-string/jumbo v0, "android.telephony.TelephonyManager"

    goto :goto_d

    :catch_1e
    move-exception v0

    const-string/jumbo v2, "CgiManager"

    const-string/jumbo v3, "getSim2TmClass"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_12
        :pswitch_16
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .registers 4

    invoke-direct {p0}, Lcom/loc/aI;->bzE()V

    :try_start_3
    iget-boolean v0, p0, Lcom/loc/aI;->b:Z

    iget-object v1, p0, Lcom/loc/aI;->bfY:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/aI;->bfX:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/loc/X;->bxe(ZLandroid/telephony/CellLocation;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/loc/aI;->d:I
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_13} :catch_18

    :goto_13
    iget-object v0, p0, Lcom/loc/aI;->bgd:Landroid/os/HandlerThread;

    if-eqz v0, :cond_27

    :goto_17
    return-void

    :catch_18
    move-exception v0

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "CgiManager"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    iput v0, p0, Lcom/loc/aI;->d:I

    goto :goto_13

    :cond_27
    new-instance v0, Lcom/loc/ab;

    const-string/jumbo v1, "listenerPhoneStateThread"

    invoke-direct {v0, p0, v1}, Lcom/loc/ab;-><init>(Lcom/loc/aI;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/aI;->bgd:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/loc/aI;->bgd:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    goto :goto_17
.end method

.method public a(Z)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    iget-wide v2, p0, Lcom/loc/aI;->i:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/aI;->i:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1f

    move v2, v1

    :goto_1b
    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_1f
    move v2, v0

    goto :goto_1b
.end method

.method public b()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/loc/aI;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bzH(Landroid/telephony/PhoneStateListener;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/aI;->bgg:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method public bzv(ZZ)Landroid/telephony/CellLocation;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/loc/aI;->bzz(ZZ)Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public bzw(Landroid/telephony/CellLocation;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/loc/aI;->b:Z

    iget-object v3, p0, Lcom/loc/aI;->bfX:Landroid/content/Context;

    invoke-static {v2, p1, v3}, Lcom/loc/X;->bxe(ZLandroid/telephony/CellLocation;Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_5a

    :goto_f
    if-eqz v0, :cond_54

    :goto_11
    return v0

    :cond_12
    return v1

    :pswitch_13
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/loc/aI;->bzx(II)Z

    move-result v0

    goto :goto_f

    :pswitch_22
    :try_start_22
    const-string/jumbo v2, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/br;->bBi(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_30

    :cond_2e
    move v0, v1

    goto :goto_f

    :cond_30
    const-string/jumbo v2, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/br;->bBi(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_2e

    const-string/jumbo v2, "getBaseStationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/br;->bBi(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_45} :catch_49

    move-result v2

    if-ltz v2, :cond_2e

    goto :goto_f

    :catch_49
    move-exception v1

    const-string/jumbo v2, "CgiManager"

    const-string/jumbo v3, "cgiUseful"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_54
    const/16 v1, 0x9

    iput v1, p0, Lcom/loc/aI;->d:I

    goto :goto_11

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_22
    .end packed-switch
.end method

.method public bzy(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/aI;->bga:Lorg/json/JSONObject;

    return-void
.end method

.method public c()Lcom/loc/am;
    .registers 4

    iget-object v0, p0, Lcom/loc/aI;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/am;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/loc/aI;->d:I

    return v0
.end method

.method public e()Landroid/telephony/CellLocation;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/aI;->bfY:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/loc/aI;->bfY:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/loc/aI;->bzw(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_13

    :goto_12
    return-object v1

    :cond_13
    iput-object v1, p0, Lcom/loc/aI;->bgc:Landroid/telephony/CellLocation;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_15} :catch_16

    goto :goto_12

    :catch_16
    move-exception v0

    const-string/jumbo v2, "CgiManager"

    const-string/jumbo v3, "getCellLocation"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public f()Landroid/telephony/TelephonyManager;
    .registers 2

    iget-object v0, p0, Lcom/loc/aI;->bfY:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public g()V
    .registers 1

    invoke-direct {p0}, Lcom/loc/aI;->bzG()V

    return-void
.end method

.method public h()V
    .registers 1

    invoke-direct {p0}, Lcom/loc/aI;->bzE()V

    return-void
.end method

.method public i()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/loc/aI;->bfY:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_20

    :cond_5
    :goto_5
    iput-object v3, p0, Lcom/loc/aI;->bgb:Landroid/telephony/PhoneStateListener;

    iget-object v1, p0, Lcom/loc/aI;->bgf:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, p0, Lcom/loc/aI;->bge:Z

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_38

    iget-object v0, p0, Lcom/loc/aI;->bgd:Landroid/os/HandlerThread;

    if-nez v0, :cond_3b

    :goto_12
    iget-object v0, p0, Lcom/loc/aI;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/16 v0, -0x71

    iput v0, p0, Lcom/loc/aI;->f:I

    iput-object v3, p0, Lcom/loc/aI;->bfY:Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/loc/aI;->bfZ:Ljava/lang/Object;

    return-void

    :cond_20
    iget-object v0, p0, Lcom/loc/aI;->bgb:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_5

    :try_start_24
    iget-object v0, p0, Lcom/loc/aI;->bfY:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/loc/aI;->bgb:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_2c} :catch_2d

    goto :goto_5

    :catch_2d
    move-exception v0

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0

    :cond_3b
    iget-object v0, p0, Lcom/loc/aI;->bgd:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v3, p0, Lcom/loc/aI;->bgd:Landroid/os/HandlerThread;

    goto :goto_12
.end method

.method public j()V
    .registers 3

    const/16 v1, 0x9

    iget v0, p0, Lcom/loc/aI;->d:I

    packed-switch v0, :pswitch_data_1c

    :cond_7
    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/loc/aI;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_10
    iput v1, p0, Lcom/loc/aI;->d:I

    goto :goto_7

    :pswitch_13
    iget-object v0, p0, Lcom/loc/aI;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_7

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_13
    .end packed-switch
.end method
