.class public Lcom/android/camera/cameraFamily/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ama:[[I

.field public static final amb:Landroid/net/Uri;

.field private static amc:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    const-string/jumbo v0, "content://nubia.camera.family/directory"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/camera/cameraFamily/h;->amb:Landroid/net/Uri;

    .line 35
    const/16 v0, 0x1f

    new-array v0, v0, [[I

    .line 36
    const v1, 0x7f0a03df

    const v2, 0x7f0a04b6

    const/4 v3, -0x2

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v4

    .line 37
    new-array v1, v7, [I

    const v2, 0x7f0a03de

    aput v2, v1, v4

    const v2, 0x7f0a04b2

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jo:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    aput-object v1, v0, v5

    .line 38
    new-array v1, v7, [I

    const v2, 0x7f0a03da

    aput v2, v1, v4

    const v2, 0x7f0a04a0

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jm:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    aput-object v1, v0, v6

    .line 39
    new-array v1, v7, [I

    const v2, 0x7f0a03db

    aput v2, v1, v4

    const v2, 0x7f0a04a1

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jF:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    aput-object v1, v0, v7

    .line 40
    new-array v1, v7, [I

    const v2, 0x7f0a02e6

    aput v2, v1, v4

    const v2, 0x7f0a04a2

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jp:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 41
    new-array v1, v7, [I

    const v2, 0x7f0a02eb

    aput v2, v1, v4

    const v2, 0x7f0a04a3

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jq:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 42
    new-array v1, v7, [I

    const v2, 0x7f0a02ec

    aput v2, v1, v4

    const v2, 0x7f0a04a4

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->ju:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 43
    new-array v1, v7, [I

    const v2, 0x7f0a02ed

    aput v2, v1, v4

    const v2, 0x7f0a04a5

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jK:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 44
    new-array v1, v7, [I

    const v2, 0x7f0a02f1

    aput v2, v1, v4

    const v2, 0x7f0a04a6

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jr:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 45
    new-array v1, v7, [I

    const v2, 0x7f0a02ee

    aput v2, v1, v4

    const v2, 0x7f0a04a7

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jM:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 46
    new-array v1, v7, [I

    const v2, 0x7f0a02e5

    aput v2, v1, v4

    const v2, 0x7f0a04a8

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jy:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 47
    new-array v1, v7, [I

    const v2, 0x7f0a02ef

    aput v2, v1, v4

    const v2, 0x7f0a04a9

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jB:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 48
    new-array v1, v7, [I

    const v2, 0x7f0a02f0

    aput v2, v1, v4

    const v2, 0x7f0a04aa

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jx:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 49
    new-array v1, v7, [I

    const v2, 0x7f0a02e7

    aput v2, v1, v4

    const v2, 0x7f0a04ab

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 50
    new-array v1, v7, [I

    const v2, 0x7f0a03b9

    aput v2, v1, v4

    const v2, 0x7f0a04ac

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jA:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 51
    new-array v1, v7, [I

    const v2, 0x7f0a03d1

    aput v2, v1, v4

    const v2, 0x7f0a04ad

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jI:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 52
    new-array v1, v7, [I

    const v2, 0x7f0a03dd

    aput v2, v1, v4

    const v2, 0x7f0a04ae

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->ji:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 53
    new-array v1, v7, [I

    const v2, 0x7f0a02e8

    aput v2, v1, v4

    const v2, 0x7f0a04af

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jG:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 54
    new-array v1, v7, [I

    const v2, 0x7f0a02e9

    aput v2, v1, v4

    const v2, 0x7f0a04b0

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 55
    new-array v1, v7, [I

    const v2, 0x7f0a02ea

    aput v2, v1, v4

    const v2, 0x7f0a04b1

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 56
    new-array v1, v7, [I

    const v2, 0x7f0a044b

    aput v2, v1, v4

    const v2, 0x7f0a04b3

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jj:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 57
    new-array v1, v7, [I

    const v2, 0x7f0a00d7

    aput v2, v1, v4

    const v2, 0x7f0a04b4

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jk:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 58
    new-array v1, v7, [I

    const v2, 0x7f0a00ca

    aput v2, v1, v4

    const v2, 0x7f0a04b5

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jh:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 59
    new-array v1, v7, [I

    const v2, 0x7f0a04c2

    aput v2, v1, v4

    const v2, 0x7f0a04b8

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jt:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 60
    new-array v1, v7, [I

    const v2, 0x7f0a0005

    aput v2, v1, v4

    const v2, 0x7f0a04b9

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->js:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 61
    new-array v1, v7, [I

    const v2, 0x7f0a04d2

    aput v2, v1, v4

    const v2, 0x7f0a04bc

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jf:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 62
    new-array v1, v7, [I

    const v2, 0x7f0a04ba

    aput v2, v1, v4

    const v2, 0x7f0a04bb

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jP:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 63
    new-array v1, v7, [I

    const v2, 0x7f0a04e3

    aput v2, v1, v4

    const v2, 0x7f0a04bd

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 64
    new-array v1, v7, [I

    const v2, 0x7f0a04e7

    aput v2, v1, v4

    const v2, 0x7f0a04e5

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jL:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 65
    new-array v1, v7, [I

    const v2, 0x7f0a0001

    aput v2, v1, v4

    const v2, 0x7f0a04be

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jR:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 66
    new-array v1, v7, [I

    const/high16 v2, 0x7f0a0000

    aput v2, v1, v4

    const v2, 0x7f0a04e6

    aput v2, v1, v5

    sget-object v2, Lcom/android/common/appService/CameraMember;->jz:Lcom/android/common/appService/CameraMember;

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 35
    sput-object v0, Lcom/android/camera/cameraFamily/h;->ama:[[I

    .line 18
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static axN(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 92
    sget-object v0, Lcom/android/camera/cameraFamily/h;->amc:[[Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 93
    return-void

    .line 95
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 96
    const-class v0, Ljava/lang/String;

    new-array v3, v5, [I

    sget-object v4, Lcom/android/camera/cameraFamily/h;->ama:[[I

    array-length v4, v4

    aput v4, v3, v1

    aput v5, v3, v6

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    sput-object v0, Lcom/android/camera/cameraFamily/h;->amc:[[Ljava/lang/String;

    .line 97
    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 99
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v0, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 100
    invoke-virtual {p0, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    move v0, v1

    .line 101
    :goto_31
    sget-object v4, Lcom/android/camera/cameraFamily/h;->ama:[[I

    array-length v4, v4

    if-ge v0, v4, :cond_49

    .line 102
    sget-object v4, Lcom/android/camera/cameraFamily/h;->amc:[[Ljava/lang/String;

    aget-object v4, v4, v0

    sget-object v5, Lcom/android/camera/cameraFamily/h;->ama:[[I

    aget-object v5, v5, v0

    aget v5, v5, v6

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 105
    :cond_49
    sget-object v0, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    iput-object v0, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 106
    invoke-virtual {p0, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    move v0, v1

    .line 107
    :goto_52
    sget-object v3, Lcom/android/camera/cameraFamily/h;->ama:[[I

    array-length v3, v3

    if-ge v0, v3, :cond_6a

    .line 108
    sget-object v3, Lcom/android/camera/cameraFamily/h;->amc:[[Ljava/lang/String;

    aget-object v3, v3, v0

    sget-object v4, Lcom/android/camera/cameraFamily/h;->ama:[[I

    aget-object v4, v4, v0

    aget v4, v4, v6

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 111
    :cond_6a
    const-string/jumbo v2, "/DCIM/Camera/"

    move v0, v1

    .line 112
    :goto_6e
    sget-object v3, Lcom/android/camera/cameraFamily/h;->ama:[[I

    array-length v3, v3

    if-ge v0, v3, :cond_cc

    .line 113
    sget-object v3, Lcom/android/camera/cameraFamily/h;->amc:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/camera/cameraFamily/h;->amc:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 114
    sget-object v3, Lcom/android/camera/cameraFamily/h;->amc:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string/jumbo v4, ""

    aput-object v4, v3, v6

    .line 118
    :goto_8e
    sget-object v3, Lcom/android/camera/cameraFamily/h;->amc:[[Ljava/lang/String;

    aget-object v3, v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/camera/cameraFamily/h;->amc:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    .line 116
    :cond_ae
    sget-object v3, Lcom/android/camera/cameraFamily/h;->amc:[[Ljava/lang/String;

    aget-object v3, v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/camera/cameraFamily/h;->amc:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    goto :goto_8e

    .line 91
    :cond_cc
    return-void
.end method

.method public static axO(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 76
    new-instance v2, Landroid/database/MatrixCursor;

    .line 77
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v3, "photo_album"

    aput-object v3, v0, v1

    const-string/jumbo v3, "album_path_en"

    aput-object v3, v0, v6

    const-string/jumbo v3, "album_path_zh"

    aput-object v3, v0, v7

    const-string/jumbo v3, "album_member"

    aput-object v3, v0, v8

    .line 76
    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 79
    invoke-static {p0}, Lcom/android/camera/cameraFamily/h;->axN(Landroid/content/Context;)V

    move v0, v1

    .line 82
    :goto_24
    sget-object v3, Lcom/android/camera/cameraFamily/h;->ama:[[I

    array-length v3, v3

    if-ge v0, v3, :cond_69

    .line 83
    new-array v3, v9, [Ljava/lang/String;

    sget-object v4, Lcom/android/camera/cameraFamily/h;->ama:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 84
    sget-object v4, Lcom/android/camera/cameraFamily/h;->amc:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    aput-object v4, v3, v6

    .line 85
    sget-object v4, Lcom/android/camera/cameraFamily/h;->amc:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v6

    aput-object v4, v3, v7

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/camera/cameraFamily/h;->ama:[[I

    aget-object v5, v5, v0

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 83
    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 88
    :cond_69
    return-object v2
.end method
