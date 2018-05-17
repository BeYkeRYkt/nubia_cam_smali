.class public Lcom/loc/bx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field static bhA:Ljava/util/HashMap;

.field public static final bhB:Landroid/util/SparseArray;

.field public static bhC:Z

.field private static bhv:[Ljava/lang/String;

.field private static bhw:Ljava/lang/String;

.field public static bhx:I

.field public static bhy:Z

.field public static bhz:I

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:I

.field static o:Ljava/lang/String;

.field private static s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "http://apilocate.amap.com/mobile/binary"

    sput-object v0, Lcom/loc/bx;->s:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "com.amap.api.location"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.loc"

    aput-object v1, v0, v3

    sput-object v0, Lcom/loc/bx;->bhv:[Ljava/lang/String;

    const-string/jumbo v0, "11B;11I;001;002;11H;11E;11K;11C;11F;11G"

    sput-object v0, Lcom/loc/bx;->bhw:Ljava/lang/String;

    sput-object v2, Lcom/loc/bx;->a:Ljava/lang/String;

    sput-object v2, Lcom/loc/bx;->b:Ljava/lang/String;

    sput-object v2, Lcom/loc/bx;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/bx;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/bx;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/bx;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/bx;->g:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/bx;->h:Ljava/lang/String;

    const/16 v0, 0x7530

    sput v0, Lcom/loc/bx;->bhx:I

    sput-object v2, Lcom/loc/bx;->j:Ljava/lang/String;

    sput-object v2, Lcom/loc/bx;->k:Ljava/lang/String;

    const/16 v0, 0x14

    sput v0, Lcom/loc/bx;->l:I

    sput-boolean v3, Lcom/loc/bx;->bhy:Z

    sput v3, Lcom/loc/bx;->bhz:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/loc/bx;->bhB:Landroid/util/SparseArray;

    sget-object v0, Lcom/loc/bx;->bhB:Landroid/util/SparseArray;

    const-string/jumbo v1, "UNKWN"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v4, v1}, vtable@11
    nop

    sget-object v0, Lcom/loc/bx;->bhB:Landroid/util/SparseArray;

    const-string/jumbo v1, "GPRS"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v3, v1}, vtable@11
    nop

    sget-object v0, Lcom/loc/bx;->bhB:Landroid/util/SparseArray;

    const-string/jumbo v1, "EDGE"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v5, v1}, vtable@11
    nop

    sget-object v0, Lcom/loc/bx;->bhB:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string/jumbo v2, "UMTS"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@11
    nop

    sget-object v0, Lcom/loc/bx;->bhB:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string/jumbo v2, "CDMA"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@11
    nop

    sget-object v0, Lcom/loc/bx;->bhB:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string/jumbo v2, "EVDO_0"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@11
    nop

    sget-object v0, Lcom/loc/bx;->bhB:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string/jumbo v2, "EVDO_A"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@11
    nop

    sget-object v0, Lcom/loc/bx;->bhB:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string/jumbo v2, "1xRTT"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@11
    nop

    sget-object v0, Lcom/loc/bx;->bhB:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string/jumbo v2, "HSDPA"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@11
    nop

    sget-object v0, Lcom/loc/bx;->bhB:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string/jumbo v2, "HSUPA"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@11
    nop

    sget-object v0, Lcom/loc/bx;->bhB:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string/jumbo v2, "HSPA"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@11
    nop

    sget-object v0, Lcom/loc/bx;->bhB:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const-string/jumbo v2, "IDEN"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@11
    nop

    sget-object v0, Lcom/loc/bx;->bhB:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string/jumbo v2, "EVDO_B"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@11
    nop

    sget-object v0, Lcom/loc/bx;->bhB:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string/jumbo v2, "LTE"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@11
    nop

    sget-object v0, Lcom/loc/bx;->bhB:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const-string/jumbo v2, "EHRPD"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@11
    nop

    sget-object v0, Lcom/loc/bx;->bhB:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const-string/jumbo v2, "HSPAP"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@11
    nop

    sput-boolean v4, Lcom/loc/bx;->bhC:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Ljava/lang/String;)Lcom/loc/ag;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Lcom/loc/cx;

    const-string/jumbo v2, "loc"

    const-string/jumbo v3, "AMAP_Location_SDK_Android 2.5.1"

    invoke-direct {v0, v2, p0, v3}, Lcom/loc/cx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/loc/bx;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/loc/cx;->bGS([Ljava/lang/String;)Lcom/loc/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/cx;->a()Lcom/loc/ag;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_17} :catch_19

    move-result-object v0

    :goto_18
    return-object v0

    :catch_19
    move-exception v0

    const-string/jumbo v2, "CoreUtil"

    const-string/jumbo v3, "getSDKInfo"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_18
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/loc/bx;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/loc/bx;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/X;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/loc/bx;->c()V

    invoke-static {p0}, Lcom/loc/M;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bx;->o:Ljava/lang/String;

    sget-object v0, Lcom/loc/bx;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/bx;->bBB(Ljava/lang/String;)V

    :goto_1c
    return-void

    :cond_1d
    const-string/jumbo v0, "http://abroad.apilocate.amap.com/mobile/binary"

    sput-object v0, Lcom/loc/bx;->s:Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_1c

    :catch_23
    move-exception v0

    const-string/jumbo v1, "CoreUtil"

    const-string/jumbo v2, "checkUrl"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x3

    const-string/jumbo v1, ""

    :try_start_4
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_11

    :cond_f
    :goto_f
    move-object v0, v1

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_f

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_22} :catch_24

    move-result-object v0

    goto :goto_10

    :catch_24
    move-exception v0

    const-string/jumbo v2, "CoreUtil"

    const-string/jumbo v3, "getMcc"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    :try_start_0
    const-string/jumbo v0, "2.5.1"

    invoke-static {v0}, Lcom/loc/bx;->a(Ljava/lang/String;)Lcom/loc/ag;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/loc/bo;->bBf(Lcom/loc/ag;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a
.end method

.method public static b()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/loc/bx;->bhv:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static bBA(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/amap/api/location/AMapLocation;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_c9

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHv()I

    move-result v0

    new-instance v1, Lcom/amap/api/location/AMapLocation;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHL()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHI()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    if-eqz v0, :cond_ca

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    :goto_2d
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->buA(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->buB(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->bux(I)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHz()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->buz(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHB()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->buv(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHw()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->buu(I)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->buI(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->buK(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->buL(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHD()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->buM(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "citycode"

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "desc"

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "adcode"

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->buG(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/amap/api/location/AMapLocation;->buH(Ljava/lang/String;)V

    if-nez v3, :cond_d3

    :cond_a9
    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->buC(Ljava/lang/String;)V

    :goto_ac
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->buE(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->buF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->buD(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->buN(Ljava/lang/String;)V

    return-object v1

    :cond_c9
    return-object v0

    :cond_ca
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHS()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    goto/16 :goto_2d

    :cond_d3
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a9

    const-string/jumbo v0, " "

    const-string/jumbo v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->buC(Ljava/lang/String;)V

    goto :goto_ac
.end method

.method private static bBB(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :cond_3
    return-void

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/loc/bx;->bhA:Ljava/util/HashMap;

    if-eqz v0, :cond_24

    sget-object v0, Lcom/loc/bx;->bhA:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lcom/loc/bx;->bhA:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_26

    :cond_20
    move-object v0, v1

    :goto_21
    if-nez v0, :cond_48

    :cond_23
    :goto_23
    return-void

    :cond_24
    return-void

    :cond_25
    return-void

    :cond_26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_20

    invoke-static {v0}, Lcom/loc/bx;->bBC(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/loc/ai;->byi([BLjava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_3c} :catch_3d

    goto :goto_21

    :catch_3d
    move-exception v0

    const-string/jumbo v1, "CoreUtil"

    const-string/jumbo v2, "checkUrl"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_48
    :try_start_48
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_23

    const-string/jumbo v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    sput-object v0, Lcom/loc/bx;->s:Ljava/lang/String;
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_59} :catch_3d

    goto :goto_23
.end method

.method private static bBC(Ljava/lang/String;)[B
    .registers 7

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-nez p0, :cond_7

    :cond_4
    new-array v0, v0, [B

    return-object v0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_4

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v3, v2, [B

    :goto_1b
    if-lt v0, v2, :cond_1e

    return-object v3

    :cond_1e
    mul-int/lit8 v4, v0, 0x2

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method

.method public static bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "reportError"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0, p1, p2}, Lcom/loc/bo;->bBe(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_f} :catch_11

    :goto_f
    return-void

    :cond_10
    return-void

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f
.end method

.method public static bBz(DD)Z
    .registers 14

    const/16 v8, 0x7c

    const/4 v1, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v0, 0x0

    const-wide v2, 0x4052400000000000L    # 73.0

    sub-double v2, p2, v2

    div-double/2addr v2, v6

    double-to-int v2, v2

    const-wide/high16 v4, 0x400c000000000000L    # 3.5

    sub-double v4, p0, v4

    div-double/2addr v4, v6

    double-to-int v3, v4

    if-gez v3, :cond_18

    :cond_17
    return v0

    :cond_18
    const/16 v4, 0x65

    if-ge v3, v4, :cond_17

    if-ltz v2, :cond_17

    if-ge v2, v8, :cond_17

    mul-int/lit8 v3, v3, 0x7c

    add-int/2addr v2, v3

    :try_start_23
    const-string/jumbo v3, "00000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000001011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011101010111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111101111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000110111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011010111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001010011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111100110001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111000111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111110011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111000000000111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111100000000000010111110100000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111110000000001111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111000000111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111101111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000101111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000011110000000001111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000011000011111100000000111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000001111111100111111111100110111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000101111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111011111000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100100000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100011100000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000111110000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110011111110000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110111111110000000000000000000000111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000011111111111111111111111111111111111111111111111100001111111111111111111111111111111111111111111111111010000000000000000000000111111111111111111111111111111111111111111110000000000000001111111111111111111111111111111111111111111100000000000000000000011111111111111111111111111111111100000000000000000000000000001111111111111111111111111111111111111111110000000000000000000001111111111111111111111111111111100000000000000000000000000000001111111111111111111111111111111111111111000000000000000000000111111111111111111111111111111110000000000000000000000000000001111111111111111111111111111111111111111100000000000000000000111111111111111111111111111111000000000000000000000000000000000111111111111111111111111111111111111111111000000000000000000001111111111111111111111111110000000000000000000000000000000000001110011111111111111111111111111111111111111100000000000000000000011111111111111111100000000000000000000000000000000000000000000000001111111111111111111111111111111111111000000000000000000001111111111111111111000000000000000000000000000000000000000000000000011111111111111111111111111111111111100000000000000000000011111111111111111100000000000000000000000000000000000000000000000000011111111111111111111111111111111111000000000000000000001111111111111111100000000000000000000000000000000000000000000000000000000111111111111111111111111111111110000000000000000000000000111111111100000000000000000000000000000000000000000000000000111111111111111111111111111111111111111000000000000000000000000011111111100000000000000000000000000000000000000000000000000011111111111111111111111111111110001111100000000000000000000000000111110000000000000000000000000000000000000000000000000000001111111111111111111111111111111000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000011111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010110000000000000000000000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_29} :catch_31

    move-result v2

    const/16 v3, 0x31

    if-eq v2, v3, :cond_2f

    :goto_2e
    return v0

    :cond_2f
    move v0, v1

    goto :goto_2e

    :catch_31
    move-exception v0

    const-string/jumbo v2, "CoreUtil"

    const-string/jumbo v3, "isChina"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "pref"

    const-string/jumbo v1, "ded"

    invoke-static {p0, v0, v1, v2}, Lcom/loc/bA;->bCd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_d
    sget-object v0, Lcom/loc/bx;->bhw:Ljava/lang/String;

    return-object v0
.end method

.method private static c()V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/loc/bx;->bhA:Ljava/util/HashMap;

    if-eqz v0, :cond_4c

    :goto_4
    sget-object v0, Lcom/loc/bx;->bhA:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/loc/bx;->bhA:Ljava/util/HashMap;

    const-string/jumbo v1, "a9a9d23668a1a7ea93de9b21d67e436a"

    const-string/jumbo v2, "F13160D440C7D0229DA95450F66AF92154AC84DF088F8CA3100B2E8131D57F3DC67124D4C466056E7A3DFBE035E1B9A4B9DA4DB68AE65A43EDFD92F5C60EF0C9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/loc/bx;->bhA:Ljava/util/HashMap;

    const-string/jumbo v1, "fe643c382e5c3b3962141f1a2e815a78"

    const-string/jumbo v2, "FB923EE67A8B4032DAA517DD8CD7A26FF7C25B0C3663F92A0B61251C4FFFA858DF169D61321C3E7919CB67DF8EFEC827"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/loc/bx;->bhA:Ljava/util/HashMap;

    const-string/jumbo v1, "b2e8bd171989cb2c3c13bd89b4c1067a"

    const-string/jumbo v2, "239CE372F804D4BE4EAFFD183668379BDF274440E6F246AB16BBE6F5D1D30DEACFBBF0C942485727FF12288228760A9E"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/loc/bx;->bhA:Ljava/util/HashMap;

    const-string/jumbo v1, "9a571aa113ad987d626c0457828962e6"

    const-string/jumbo v2, "D2FF99A88BEB04683D89470D4FA72B1749DA456AB0D0F1A476477CE5A6874F53A9106423D905F9D808C0FCE8E7F1E04AC642F01FE41D0C7D933971F45CBA72B7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/loc/bx;->bhA:Ljava/util/HashMap;

    const-string/jumbo v1, "668319f11506def6208d6afe320dfd52"

    const-string/jumbo v2, "53E53D46011A6BBAEA4FAE5442E659E0577CDD336F930C28635C322FB3F51C3C63F7FBAC9EAE448DFA2E5E5D716C4807"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/loc/bx;->bhA:Ljava/util/HashMap;

    const-string/jumbo v1, "256b0f26bb2a9506be6cfdb84028ae08"

    const-string/jumbo v2, "AF2228680EDC323FBA035362EB7E1E38A0C33E1CF6F6FB805EE553A230CBA754CD9552EB9B546542CBE619E8293151BE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4b
    return-void

    :cond_4c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/loc/bx;->bhA:Ljava/util/HashMap;
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_53} :catch_54

    goto :goto_4

    :catch_54
    move-exception v0

    const-string/jumbo v1, "CoreUtil"

    const-string/jumbo v2, "initUrlHash"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method
