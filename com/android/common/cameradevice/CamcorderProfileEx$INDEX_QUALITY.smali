.class public final enum Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum NR:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

.field public static final enum NS:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

.field public static final enum NT:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

.field public static final enum NU:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

.field public static final enum NV:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

.field private static final synthetic NW:[Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    const-string/jumbo v1, "_4KUHD"

    invoke-direct {v0, v1, v2}, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NR:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    new-instance v0, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    const-string/jumbo v1, "_1080P"

    invoke-direct {v0, v1, v3}, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NT:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    new-instance v0, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    const-string/jumbo v1, "_720P"

    invoke-direct {v0, v1, v4}, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NS:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    new-instance v0, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    const-string/jumbo v1, "_VGA"

    invoke-direct {v0, v1, v5}, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NU:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    new-instance v0, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    const-string/jumbo v1, "_LOW"

    invoke-direct {v0, v1, v6}, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NV:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NR:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NT:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NS:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NU:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NV:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NW:[Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;
    .registers 2

    .prologue
    .line 14
    const-class v0, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    return-object v0
.end method

.method public static values()[Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NW:[Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    return-object v0
.end method
