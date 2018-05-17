.class public Lcom/android/camera/cameraFamily/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final alL:[Lcom/android/common/appService/CameraMember;

.field private static alY:Lcom/android/camera/cameraFamily/e;

.field private static final synthetic alZ:[I


# instance fields
.field private alM:Landroid/content/Context;

.field private alN:Ljava/lang/Object;

.field private alO:Z

.field private alP:Landroid/os/Handler;

.field private alQ:Z

.field private alR:Landroid/os/HandlerThread;

.field private alS:Ljava/util/List;

.field private alT:Ljava/util/ArrayList;

.field private alU:Landroid/os/Handler;

.field private alV:Landroid/content/SharedPreferences;

.field private alW:Ljava/util/List;

.field private alX:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 46
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/android/common/appService/CameraMember;

    .line 47
    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/appService/CameraMember;->ju:Lcom/android/common/appService/CameraMember;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 48
    sget-object v1, Lcom/android/common/appService/CameraMember;->jr:Lcom/android/common/appService/CameraMember;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/appService/CameraMember;->jp:Lcom/android/common/appService/CameraMember;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 49
    sget-object v1, Lcom/android/common/appService/CameraMember;->jm:Lcom/android/common/appService/CameraMember;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/appService/CameraMember;->jF:Lcom/android/common/appService/CameraMember;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 50
    sget-object v1, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/appService/CameraMember;->jG:Lcom/android/common/appService/CameraMember;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 51
    sget-object v1, Lcom/android/common/appService/CameraMember;->jM:Lcom/android/common/appService/CameraMember;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/appService/CameraMember;->jK:Lcom/android/common/appService/CameraMember;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 52
    sget-object v1, Lcom/android/common/appService/CameraMember;->jx:Lcom/android/common/appService/CameraMember;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/appService/CameraMember;->jj:Lcom/android/common/appService/CameraMember;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 53
    sget-object v1, Lcom/android/common/appService/CameraMember;->jI:Lcom/android/common/appService/CameraMember;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/appService/CameraMember;->ji:Lcom/android/common/appService/CameraMember;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 54
    sget-object v1, Lcom/android/common/appService/CameraMember;->jA:Lcom/android/common/appService/CameraMember;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/appService/CameraMember;->jk:Lcom/android/common/appService/CameraMember;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 55
    sget-object v1, Lcom/android/common/appService/CameraMember;->jh:Lcom/android/common/appService/CameraMember;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/appService/CameraMember;->jq:Lcom/android/common/appService/CameraMember;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 56
    sget-object v1, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/appService/CameraMember;->jy:Lcom/android/common/appService/CameraMember;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 57
    sget-object v1, Lcom/android/common/appService/CameraMember;->jt:Lcom/android/common/appService/CameraMember;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/appService/CameraMember;->js:Lcom/android/common/appService/CameraMember;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/appService/CameraMember;->jP:Lcom/android/common/appService/CameraMember;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 58
    sget-object v1, Lcom/android/common/appService/CameraMember;->jL:Lcom/android/common/appService/CameraMember;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/appService/CameraMember;->jR:Lcom/android/common/appService/CameraMember;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/appService/CameraMember;->jQ:Lcom/android/common/appService/CameraMember;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 59
    sget-object v1, Lcom/android/common/appService/CameraMember;->jz:Lcom/android/common/appService/CameraMember;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 46
    sput-object v0, Lcom/android/camera/cameraFamily/e;->alL:[Lcom/android/common/appService/CameraMember;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/cameraFamily/e;->alY:Lcom/android/camera/cameraFamily/e;

    .line 38
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/android/camera/cameraFamily/e;->alM:Landroid/content/Context;

    .line 63
    iput-object v1, p0, Lcom/android/camera/cameraFamily/e;->alW:Ljava/util/List;

    .line 64
    iput-object v1, p0, Lcom/android/camera/cameraFamily/e;->alS:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/cameraFamily/e;->alT:Ljava/util/ArrayList;

    .line 66
    iput-object v1, p0, Lcom/android/camera/cameraFamily/e;->alV:Landroid/content/SharedPreferences;

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/cameraFamily/e;->alX:Ljava/util/ArrayList;

    .line 516
    iput-boolean v2, p0, Lcom/android/camera/cameraFamily/e;->alQ:Z

    .line 517
    iput-boolean v2, p0, Lcom/android/camera/cameraFamily/e;->alO:Z

    .line 518
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/cameraFamily/e;->alN:Ljava/lang/Object;

    .line 526
    new-instance v0, Lcom/android/camera/cameraFamily/x;

    invoke-direct {v0, p0}, Lcom/android/camera/cameraFamily/x;-><init>(Lcom/android/camera/cameraFamily/e;)V

    iput-object v0, p0, Lcom/android/camera/cameraFamily/e;->alU:Landroid/os/Handler;

    .line 77
    invoke-direct {p0}, Lcom/android/camera/cameraFamily/e;->axy()V

    .line 75
    return-void
.end method

.method private static axA(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 445
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 446
    const-string/jumbo v1, "cn.nubia.wlancamera"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_c} :catch_11

    move-result-object v0

    .line 447
    if-eqz v0, :cond_12

    .line 448
    const/4 v0, 0x1

    return v0

    .line 450
    :catch_11
    move-exception v0

    .line 452
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private axC()V
    .registers 4

    .prologue
    .line 138
    const-string/jumbo v0, "CameraFamilyMembers"

    const-string/jumbo v1, "updateNameWhenLanguageChangeInternal"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alM:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    sget-object v1, Lcom/android/camera/cameraFamily/i;->amg:Landroid/net/Uri;

    .line 142
    const/4 v2, 0x0

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 137
    return-void
.end method

.method static synthetic axD(Lcom/android/camera/cameraFamily/e;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alN:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic axE(Lcom/android/camera/cameraFamily/e;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alP:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic axF(Lcom/android/camera/cameraFamily/e;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alU:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic axG(Lcom/android/camera/cameraFamily/e;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alW:Ljava/util/List;

    return-object v0
.end method

.method static synthetic axH(Lcom/android/camera/cameraFamily/e;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alX:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic axI(Lcom/android/camera/cameraFamily/e;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/cameraFamily/e;->alO:Z

    return p1
.end method

.method static synthetic axJ(Lcom/android/camera/cameraFamily/e;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/cameraFamily/e;->alQ:Z

    return p1
.end method

.method static synthetic axK(Lcom/android/camera/cameraFamily/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/cameraFamily/e;->axC()V

    return-void
.end method

.method private static synthetic axL()[I
    .registers 3

    sget-object v0, Lcom/android/camera/cameraFamily/e;->alZ:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/camera/cameraFamily/e;->alZ:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/common/appService/CameraMember;->values()[Lcom/android/common/appService/CameraMember;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/common/appService/CameraMember;->jf:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_18} :catch_1f7

    :goto_18
    :try_start_18
    sget-object v1, Lcom/android/common/appService/CameraMember;->jg:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_22} :catch_1f4

    :goto_22
    :try_start_22
    sget-object v1, Lcom/android/common/appService/CameraMember;->jh:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_1f1

    :goto_2b
    :try_start_2b
    sget-object v1, Lcom/android/common/appService/CameraMember;->ji:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_1ee

    :goto_34
    :try_start_34
    sget-object v1, Lcom/android/common/appService/CameraMember;->jj:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_1eb

    :goto_3d
    :try_start_3d
    sget-object v1, Lcom/android/common/appService/CameraMember;->jk:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_46} :catch_1e8

    :goto_46
    :try_start_46
    sget-object v1, Lcom/android/common/appService/CameraMember;->jl:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_1e5

    :goto_50
    :try_start_50
    sget-object v1, Lcom/android/common/appService/CameraMember;->jm:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_59} :catch_1e2

    :goto_59
    :try_start_59
    sget-object v1, Lcom/android/common/appService/CameraMember;->jn:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_63} :catch_1df

    :goto_63
    :try_start_63
    sget-object v1, Lcom/android/common/appService/CameraMember;->jo:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_6d} :catch_1dc

    :goto_6d
    :try_start_6d
    sget-object v1, Lcom/android/common/appService/CameraMember;->jp:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_76} :catch_1d9

    :goto_76
    :try_start_76
    sget-object v1, Lcom/android/common/appService/CameraMember;->jq:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_7f} :catch_1d6

    :goto_7f
    :try_start_7f
    sget-object v1, Lcom/android/common/appService/CameraMember;->jr:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_89} :catch_1d3

    :goto_89
    :try_start_89
    sget-object v1, Lcom/android/common/appService/CameraMember;->js:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_93} :catch_1d0

    :goto_93
    :try_start_93
    sget-object v1, Lcom/android/common/appService/CameraMember;->jt:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9d} :catch_1cd

    :goto_9d
    :try_start_9d
    sget-object v1, Lcom/android/common/appService/CameraMember;->ju:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_1ca

    :goto_a7
    :try_start_a7
    sget-object v1, Lcom/android/common/appService/CameraMember;->jv:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b1} :catch_1c7

    :goto_b1
    :try_start_b1
    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bb} :catch_1c4

    :goto_bb
    :try_start_bb
    sget-object v1, Lcom/android/common/appService/CameraMember;->jx:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_c5} :catch_1c1

    :goto_c5
    :try_start_c5
    sget-object v1, Lcom/android/common/appService/CameraMember;->jy:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_cf} :catch_1be

    :goto_cf
    :try_start_cf
    sget-object v1, Lcom/android/common/appService/CameraMember;->jz:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_d9} :catch_1bb

    :goto_d9
    :try_start_d9
    sget-object v1, Lcom/android/common/appService/CameraMember;->jA:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d9 .. :try_end_e3} :catch_1b8

    :goto_e3
    :try_start_e3
    sget-object v1, Lcom/android/common/appService/CameraMember;->jB:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3 .. :try_end_ed} :catch_1b5

    :goto_ed
    :try_start_ed
    sget-object v1, Lcom/android/common/appService/CameraMember;->jC:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f7} :catch_1b2

    :goto_f7
    :try_start_f7
    sget-object v1, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_101} :catch_1af

    :goto_101
    :try_start_101
    sget-object v1, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10b} :catch_1ac

    :goto_10b
    :try_start_10b
    sget-object v1, Lcom/android/common/appService/CameraMember;->jF:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_115
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b .. :try_end_115} :catch_1a9

    :goto_115
    :try_start_115
    sget-object v1, Lcom/android/common/appService/CameraMember;->jG:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_11f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_115 .. :try_end_11f} :catch_1a6

    :goto_11f
    :try_start_11f
    sget-object v1, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_129} :catch_1a4

    :goto_129
    :try_start_129
    sget-object v1, Lcom/android/common/appService/CameraMember;->jI:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_133
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_133} :catch_1a2

    :goto_133
    :try_start_133
    sget-object v1, Lcom/android/common/appService/CameraMember;->jJ:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_13d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_133 .. :try_end_13d} :catch_1a0

    :goto_13d
    :try_start_13d
    sget-object v1, Lcom/android/common/appService/CameraMember;->jK:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_147
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13d .. :try_end_147} :catch_19e

    :goto_147
    :try_start_147
    sget-object v1, Lcom/android/common/appService/CameraMember;->jL:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_151
    .catch Ljava/lang/NoSuchFieldError; {:try_start_147 .. :try_end_151} :catch_19c

    :goto_151
    :try_start_151
    sget-object v1, Lcom/android/common/appService/CameraMember;->jM:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_15b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_151 .. :try_end_15b} :catch_19a

    :goto_15b
    :try_start_15b
    sget-object v1, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_165
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15b .. :try_end_165} :catch_198

    :goto_165
    :try_start_165
    sget-object v1, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_16f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_165 .. :try_end_16f} :catch_196

    :goto_16f
    :try_start_16f
    sget-object v1, Lcom/android/common/appService/CameraMember;->jP:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_179
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16f .. :try_end_179} :catch_194

    :goto_179
    :try_start_179
    sget-object v1, Lcom/android/common/appService/CameraMember;->jQ:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_183
    .catch Ljava/lang/NoSuchFieldError; {:try_start_179 .. :try_end_183} :catch_192

    :goto_183
    :try_start_183
    sget-object v1, Lcom/android/common/appService/CameraMember;->jR:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_18d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_183 .. :try_end_18d} :catch_190

    :goto_18d
    sput-object v0, Lcom/android/camera/cameraFamily/e;->alZ:[I

    return-object v0

    :catch_190
    move-exception v1

    goto :goto_18d

    :catch_192
    move-exception v1

    goto :goto_183

    :catch_194
    move-exception v1

    goto :goto_179

    :catch_196
    move-exception v1

    goto :goto_16f

    :catch_198
    move-exception v1

    goto :goto_165

    :catch_19a
    move-exception v1

    goto :goto_15b

    :catch_19c
    move-exception v1

    goto :goto_151

    :catch_19e
    move-exception v1

    goto :goto_147

    :catch_1a0
    move-exception v1

    goto :goto_13d

    :catch_1a2
    move-exception v1

    goto :goto_133

    :catch_1a4
    move-exception v1

    goto :goto_129

    :catch_1a6
    move-exception v1

    goto/16 :goto_11f

    :catch_1a9
    move-exception v1

    goto/16 :goto_115

    :catch_1ac
    move-exception v1

    goto/16 :goto_10b

    :catch_1af
    move-exception v1

    goto/16 :goto_101

    :catch_1b2
    move-exception v1

    goto/16 :goto_f7

    :catch_1b5
    move-exception v1

    goto/16 :goto_ed

    :catch_1b8
    move-exception v1

    goto/16 :goto_e3

    :catch_1bb
    move-exception v1

    goto/16 :goto_d9

    :catch_1be
    move-exception v1

    goto/16 :goto_cf

    :catch_1c1
    move-exception v1

    goto/16 :goto_c5

    :catch_1c4
    move-exception v1

    goto/16 :goto_bb

    :catch_1c7
    move-exception v1

    goto/16 :goto_b1

    :catch_1ca
    move-exception v1

    goto/16 :goto_a7

    :catch_1cd
    move-exception v1

    goto/16 :goto_9d

    :catch_1d0
    move-exception v1

    goto/16 :goto_93

    :catch_1d3
    move-exception v1

    goto/16 :goto_89

    :catch_1d6
    move-exception v1

    goto/16 :goto_7f

    :catch_1d9
    move-exception v1

    goto/16 :goto_76

    :catch_1dc
    move-exception v1

    goto/16 :goto_6d

    :catch_1df
    move-exception v1

    goto/16 :goto_63

    :catch_1e2
    move-exception v1

    goto/16 :goto_59

    :catch_1e5
    move-exception v1

    goto/16 :goto_50

    :catch_1e8
    move-exception v1

    goto/16 :goto_46

    :catch_1eb
    move-exception v1

    goto/16 :goto_3d

    :catch_1ee
    move-exception v1

    goto/16 :goto_34

    :catch_1f1
    move-exception v1

    goto/16 :goto_2b

    :catch_1f4
    move-exception v1

    goto/16 :goto_22

    :catch_1f7
    move-exception v1

    goto/16 :goto_18
.end method

.method public static axr(ILandroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 339
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    .line 340
    invoke-static {}, Lcom/android/camera/cameraFamily/e;->axL()[I

    move-result-object v2

    invoke-static {p0}, Lcom/android/common/appService/CameraMember;->md(I)Lcom/android/common/appService/CameraMember;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_b4

    .line 441
    :goto_1a
    :pswitch_1a
    return v0

    .line 345
    :pswitch_1b
    invoke-interface {v1}, Lcom/android/common/custom/x;->acv()Z

    move-result v0

    goto :goto_1a

    .line 348
    :pswitch_20
    invoke-interface {v1}, Lcom/android/common/custom/x;->aej()Z

    move-result v0

    goto :goto_1a

    .line 351
    :pswitch_25
    invoke-interface {v1}, Lcom/android/common/custom/x;->acw()Z

    move-result v0

    goto :goto_1a

    .line 354
    :pswitch_2a
    invoke-interface {v1}, Lcom/android/common/custom/x;->acM()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 355
    return v0

    .line 357
    :cond_31
    invoke-interface {v1}, Lcom/android/common/custom/x;->adI()Z

    move-result v0

    goto :goto_1a

    .line 361
    :pswitch_36
    invoke-interface {v1}, Lcom/android/common/custom/x;->adJ()Z

    move-result v0

    goto :goto_1a

    .line 364
    :pswitch_3b
    invoke-interface {v1}, Lcom/android/common/custom/x;->acz()Z

    move-result v0

    goto :goto_1a

    .line 367
    :pswitch_40
    invoke-interface {v1}, Lcom/android/common/custom/x;->acx()Z

    move-result v0

    goto :goto_1a

    .line 370
    :pswitch_45
    invoke-interface {v1}, Lcom/android/common/custom/x;->ael()Z

    move-result v0

    goto :goto_1a

    .line 373
    :pswitch_4a
    invoke-interface {v1}, Lcom/android/common/custom/x;->acM()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 374
    return v0

    .line 376
    :cond_51
    invoke-interface {v1}, Lcom/android/common/custom/x;->aef()Z

    move-result v0

    goto :goto_1a

    .line 383
    :pswitch_56
    invoke-interface {v1}, Lcom/android/common/custom/x;->aek()Z

    move-result v0

    goto :goto_1a

    .line 386
    :pswitch_5b
    invoke-interface {v1}, Lcom/android/common/custom/x;->adE()Z

    move-result v0

    goto :goto_1a

    .line 389
    :pswitch_60
    invoke-interface {v1}, Lcom/android/common/custom/x;->aei()Z

    move-result v0

    goto :goto_1a

    .line 395
    :pswitch_65
    invoke-interface {v1}, Lcom/android/common/custom/x;->aep()Z

    move-result v0

    goto :goto_1a

    .line 398
    :pswitch_6a
    invoke-interface {v1}, Lcom/android/common/custom/x;->aeq()Z

    move-result v0

    goto :goto_1a

    .line 401
    :pswitch_6f
    invoke-interface {v1}, Lcom/android/common/custom/x;->aer()Z

    move-result v0

    goto :goto_1a

    .line 404
    :pswitch_74
    const/4 v0, 0x1

    .line 405
    goto :goto_1a

    .line 407
    :pswitch_76
    invoke-interface {v1}, Lcom/android/common/custom/x;->acM()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 408
    return v0

    .line 410
    :cond_7d
    invoke-interface {v1}, Lcom/android/common/custom/x;->adi()Z

    move-result v0

    goto :goto_1a

    .line 414
    :pswitch_82
    invoke-interface {v1}, Lcom/android/common/custom/x;->acK()Z

    move-result v0

    goto :goto_1a

    .line 417
    :pswitch_87
    invoke-interface {v1}, Lcom/android/common/custom/x;->acJ()Z

    move-result v0

    goto :goto_1a

    .line 420
    :pswitch_8c
    invoke-interface {v1}, Lcom/android/common/custom/x;->adl()Z

    move-result v0

    goto :goto_1a

    .line 423
    :pswitch_91
    invoke-interface {v1}, Lcom/android/common/custom/x;->acP()Z

    move-result v0

    goto :goto_1a

    .line 426
    :pswitch_96
    invoke-interface {v1}, Lcom/android/common/custom/x;->aes()Z

    move-result v0

    goto :goto_1a

    .line 429
    :pswitch_9b
    invoke-interface {v1}, Lcom/android/common/custom/x;->adT()Z

    move-result v0

    goto/16 :goto_1a

    .line 432
    :pswitch_a1
    invoke-interface {v1}, Lcom/android/common/custom/x;->adU()Z

    move-result v0

    goto/16 :goto_1a

    .line 435
    :pswitch_a7
    invoke-static {p1}, Lcom/android/camera/cameraFamily/e;->axA(Landroid/content/Context;)Z

    move-result v0

    goto/16 :goto_1a

    .line 438
    :pswitch_ad
    invoke-interface {v1}, Lcom/android/common/custom/x;->adp()Z

    move-result v0

    goto/16 :goto_1a

    .line 340
    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_87
        :pswitch_6a
        :pswitch_5b
        :pswitch_82
        :pswitch_1b
        :pswitch_25
        :pswitch_2a
        :pswitch_40
        :pswitch_91
        :pswitch_8c
        :pswitch_36
        :pswitch_1a
        :pswitch_56
        :pswitch_4a
        :pswitch_ad
        :pswitch_1a
        :pswitch_1a
        :pswitch_20
        :pswitch_6f
        :pswitch_60
        :pswitch_65
        :pswitch_3b
        :pswitch_9b
        :pswitch_45
        :pswitch_74
        :pswitch_76
        :pswitch_96
        :pswitch_a7
        :pswitch_a1
    .end packed-switch
.end method

.method public static axt(I)I
    .registers 5

    .prologue
    const v0, 0x7f020048

    .line 146
    const/4 v1, 0x0

    .line 147
    invoke-static {}, Lcom/android/camera/cameraFamily/e;->axL()[I

    move-result-object v2

    invoke-static {p0}, Lcom/android/common/appService/CameraMember;->md(I)Lcom/android/common/appService/CameraMember;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_70

    move v0, v1

    .line 238
    :goto_16
    :pswitch_16
    return v0

    .line 152
    :pswitch_17
    const v0, 0x7f020030

    .line 153
    goto :goto_16

    .line 155
    :pswitch_1b
    const v0, 0x7f020044

    .line 156
    goto :goto_16

    .line 158
    :pswitch_1f
    const v0, 0x7f020032

    .line 159
    goto :goto_16

    .line 161
    :pswitch_23
    const v0, 0x7f020033

    .line 162
    goto :goto_16

    .line 164
    :pswitch_27
    const v0, 0x7f02003b

    .line 165
    goto :goto_16

    .line 167
    :pswitch_2b
    const v0, 0x7f020049

    .line 168
    goto :goto_16

    .line 170
    :pswitch_2f
    const v0, 0x7f020035

    .line 171
    goto :goto_16

    .line 173
    :pswitch_33
    const v0, 0x7f02004d

    .line 174
    goto :goto_16

    .line 176
    :pswitch_37
    const v0, 0x7f020040

    .line 177
    goto :goto_16

    .line 182
    :pswitch_3b
    const v0, 0x7f02003d

    .line 183
    goto :goto_16

    .line 185
    :pswitch_3f
    const v0, 0x7f02002d

    .line 186
    goto :goto_16

    .line 188
    :pswitch_43
    const v0, 0x7f020046

    .line 189
    goto :goto_16

    .line 206
    :pswitch_47
    const v0, 0x7f02004e

    .line 207
    goto :goto_16

    .line 209
    :pswitch_4b
    const v0, 0x7f02002e

    .line 210
    goto :goto_16

    .line 212
    :pswitch_4f
    const v0, 0x7f02002b

    .line 213
    goto :goto_16

    .line 215
    :pswitch_53
    const v0, 0x7f020039

    .line 216
    goto :goto_16

    .line 218
    :pswitch_57
    const v0, 0x7f020037

    .line 219
    goto :goto_16

    .line 221
    :pswitch_5b
    const v0, 0x7f02003e

    .line 222
    goto :goto_16

    .line 224
    :pswitch_5f
    const v0, 0x7f02004b

    .line 225
    goto :goto_16

    .line 227
    :pswitch_63
    const v0, 0x7f020053

    .line 228
    goto :goto_16

    .line 230
    :pswitch_67
    const v0, 0x7f020051

    .line 231
    goto :goto_16

    .line 233
    :pswitch_6b
    const v0, 0x7f020042

    .line 234
    goto :goto_16

    .line 147
    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_16
        :pswitch_3f
        :pswitch_4b
        :pswitch_17
        :pswitch_1f
        :pswitch_23
        :pswitch_2f
        :pswitch_57
        :pswitch_53
        :pswitch_27
        :pswitch_16
        :pswitch_3b
        :pswitch_37
        :pswitch_6b
        :pswitch_16
        :pswitch_16
        :pswitch_1b
        :pswitch_16
        :pswitch_43
        :pswitch_16
        :pswitch_2b
        :pswitch_5f
        :pswitch_33
        :pswitch_16
        :pswitch_47
        :pswitch_5b
        :pswitch_67
        :pswitch_63
    .end packed-switch
.end method

.method public static declared-synchronized axu()Lcom/android/camera/cameraFamily/e;
    .registers 2

    .prologue
    const-class v1, Lcom/android/camera/cameraFamily/e;

    monitor-enter v1

    .line 69
    :try_start_3
    sget-object v0, Lcom/android/camera/cameraFamily/e;->alY:Lcom/android/camera/cameraFamily/e;

    if-nez v0, :cond_e

    .line 70
    new-instance v0, Lcom/android/camera/cameraFamily/e;

    invoke-direct {v0}, Lcom/android/camera/cameraFamily/e;-><init>()V

    sput-object v0, Lcom/android/camera/cameraFamily/e;->alY:Lcom/android/camera/cameraFamily/e;

    .line 72
    :cond_e
    sget-object v0, Lcom/android/camera/cameraFamily/e;->alY:Lcom/android/camera/cameraFamily/e;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private axv(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alM:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static axw(I)I
    .registers 4

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    invoke-static {}, Lcom/android/camera/cameraFamily/e;->axL()[I

    move-result-object v1

    invoke-static {p0}, Lcom/android/common/appService/CameraMember;->md(I)Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_8c

    .line 334
    :goto_12
    :pswitch_12
    return v0

    .line 245
    :pswitch_13
    const v0, 0x7f0a03d9

    .line 246
    goto :goto_12

    .line 248
    :pswitch_17
    const v0, 0x7f0a03da

    .line 249
    goto :goto_12

    .line 251
    :pswitch_1b
    const v0, 0x7f0a03db

    .line 252
    goto :goto_12

    .line 254
    :pswitch_1f
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aee()I

    move-result v0

    goto :goto_12

    .line 257
    :pswitch_2c
    const v0, 0x7f0a02eb

    .line 258
    goto :goto_12

    .line 260
    :pswitch_30
    const v0, 0x7f0a02ec

    .line 261
    goto :goto_12

    .line 263
    :pswitch_34
    const v0, 0x7f0a02ed

    .line 264
    goto :goto_12

    .line 266
    :pswitch_38
    const v0, 0x7f0a02f1

    .line 267
    goto :goto_12

    .line 269
    :pswitch_3c
    const v0, 0x7f0a02ee

    .line 270
    goto :goto_12

    .line 272
    :pswitch_40
    const v0, 0x7f0a02e5

    .line 273
    goto :goto_12

    .line 278
    :pswitch_44
    const v0, 0x7f0a02f0

    .line 279
    goto :goto_12

    .line 281
    :pswitch_48
    const v0, 0x7f0a044b

    .line 282
    goto :goto_12

    .line 284
    :pswitch_4c
    const v0, 0x7f0a02e7

    .line 285
    goto :goto_12

    .line 287
    :pswitch_50
    const v0, 0x7f0a03b9

    .line 288
    goto :goto_12

    .line 290
    :pswitch_54
    const v0, 0x7f0a03d1

    .line 291
    goto :goto_12

    .line 293
    :pswitch_58
    const v0, 0x7f0a03dd

    .line 294
    goto :goto_12

    .line 296
    :pswitch_5c
    const v0, 0x7f0a02e8

    .line 297
    goto :goto_12

    .line 299
    :pswitch_60
    const v0, 0x7f0a02e9

    .line 300
    goto :goto_12

    .line 302
    :pswitch_64
    const v0, 0x7f0a02ea

    .line 303
    goto :goto_12

    .line 305
    :pswitch_68
    const v0, 0x7f0a00d7

    .line 306
    goto :goto_12

    .line 308
    :pswitch_6c
    const v0, 0x7f0a00ca

    .line 309
    goto :goto_12

    .line 311
    :pswitch_70
    const v0, 0x7f0a04c2

    .line 312
    goto :goto_12

    .line 314
    :pswitch_74
    const v0, 0x7f0a0005

    .line 315
    goto :goto_12

    .line 317
    :pswitch_78
    const v0, 0x7f0a04ba

    .line 318
    goto :goto_12

    .line 320
    :pswitch_7c
    const v0, 0x7f0a04e7

    .line 321
    goto :goto_12

    .line 323
    :pswitch_80
    const v0, 0x7f0a0001

    .line 324
    goto :goto_12

    .line 326
    :pswitch_84
    const v0, 0x7f0a04bf

    .line 327
    goto :goto_12

    .line 329
    :pswitch_88
    const/high16 v0, 0x7f0a0000

    .line 330
    goto :goto_12

    .line 243
    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_58
        :pswitch_48
        :pswitch_68
        :pswitch_17
        :pswitch_1f
        :pswitch_2c
        :pswitch_38
        :pswitch_74
        :pswitch_70
        :pswitch_30
        :pswitch_13
        :pswitch_44
        :pswitch_40
        :pswitch_88
        :pswitch_50
        :pswitch_12
        :pswitch_1b
        :pswitch_5c
        :pswitch_4c
        :pswitch_54
        :pswitch_34
        :pswitch_7c
        :pswitch_3c
        :pswitch_60
        :pswitch_64
        :pswitch_78
        :pswitch_84
        :pswitch_80
    .end packed-switch
.end method

.method private axy()V
    .registers 4

    .prologue
    .line 548
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "camera_family_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/cameraFamily/e;->alR:Landroid/os/HandlerThread;

    .line 549
    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alR:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 551
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/cameraFamily/e;->alR:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/camera/cameraFamily/y;

    invoke-direct {v2, p0}, Lcom/android/camera/cameraFamily/y;-><init>(Lcom/android/camera/cameraFamily/e;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/camera/cameraFamily/e;->alP:Landroid/os/Handler;

    .line 547
    return-void
.end method

.method private axz()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/cameraFamily/e;->alW:Ljava/util/List;

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/cameraFamily/e;->alS:Ljava/util/List;

    .line 99
    :goto_f
    sget-object v1, Lcom/android/camera/cameraFamily/e;->alL:[Lcom/android/common/appService/CameraMember;

    array-length v1, v1

    if-ge v0, v1, :cond_5d

    .line 100
    sget-object v1, Lcom/android/camera/cameraFamily/e;->alL:[Lcom/android/common/appService/CameraMember;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v1

    .line 101
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 102
    const-string/jumbo v3, "family_member_type"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string/jumbo v3, "family_member_name"

    .line 104
    invoke-static {v1}, Lcom/android/camera/cameraFamily/e;->axw(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/camera/cameraFamily/e;->axv(I)Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v3, "family_member_icon_id"

    invoke-static {v1}, Lcom/android/camera/cameraFamily/e;->axt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v3, p0, Lcom/android/camera/cameraFamily/e;->alM:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/camera/cameraFamily/e;->axr(ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 107
    iget-object v1, p0, Lcom/android/camera/cameraFamily/e;->alW:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :goto_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 109
    :cond_57
    iget-object v1, p0, Lcom/android/camera/cameraFamily/e;->alS:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 95
    :cond_5d
    return-void
.end method


# virtual methods
.method public axB()V
    .registers 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 471
    return-void
.end method

.method public axn(Lcom/android/camera/cameraFamily/g;)V
    .registers 4

    .prologue
    .line 498
    iget-object v1, p0, Lcom/android/camera/cameraFamily/e;->alN:Ljava/lang/Object;

    monitor-enter v1

    .line 499
    if-eqz p1, :cond_12

    .line 500
    :try_start_5
    iget-boolean v0, p0, Lcom/android/camera/cameraFamily/e;->alO:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/camera/cameraFamily/e;->alQ:Z

    if-eqz v0, :cond_14

    .line 501
    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alW:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/android/camera/cameraFamily/g;->axM(Ljava/util/List;)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_22

    :cond_12
    :goto_12
    monitor-exit v1

    .line 497
    return-void

    .line 502
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 503
    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_22

    goto :goto_12

    .line 498
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public axo()V
    .registers 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 512
    return-void
.end method

.method public axp(Lcom/android/camera/cameraFamily/f;)V
    .registers 3

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alT:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 467
    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alT:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 465
    :cond_d
    return-void
.end method

.method public axq()Ljava/util/List;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alW:Ljava/util/List;

    return-object v0
.end method

.method public axs(Lcom/android/camera/cameraFamily/f;)V
    .registers 3

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alT:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 461
    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alT:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_d
    return-void
.end method

.method public axx(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    const-string/jumbo v0, "CameraFamilyMembers"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/android/camera/cameraFamily/e;->alM:Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Lcom/android/camera/cameraFamily/e;->axz()V

    .line 87
    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alM:Landroid/content/Context;

    const-string/jumbo v1, "CameraFamilyMembers"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/cameraFamily/e;->alV:Landroid/content/SharedPreferences;

    .line 89
    iput-boolean v2, p0, Lcom/android/camera/cameraFamily/e;->alQ:Z

    .line 90
    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alP:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alP:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alP:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 83
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 594
    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alR:Landroid/os/HandlerThread;

    if-eqz v0, :cond_c

    .line 595
    iget-object v0, p0, Lcom/android/camera/cameraFamily/e;->alR:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 596
    iput-object v1, p0, Lcom/android/camera/cameraFamily/e;->alR:Landroid/os/HandlerThread;

    .line 598
    :cond_c
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 593
    return-void
.end method
