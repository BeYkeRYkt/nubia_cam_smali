.class public final enum Lcom/android/common/appService/IDualCameraControl$DualCameraMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic gZ:[Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

.field public static final enum ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

.field public static final enum hb:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

.field public static final enum hc:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    const-string/jumbo v1, "SINGLE_CAMERA_AUTO_MODE"

    invoke-direct {v0, v1, v2}, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hc:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    new-instance v0, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    const-string/jumbo v1, "DUAL_CAMERA_FUSION_MODE"

    invoke-direct {v0, v1, v3}, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hb:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    new-instance v0, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    const-string/jumbo v1, "DUAL_CAMERA_APERTURE_MODE"

    invoke-direct {v0, v1, v4}, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hc:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hb:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->gZ:[Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/appService/IDualCameraControl$DualCameraMode;
    .registers 2

    .prologue
    .line 9
    const-class v0, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    return-object v0
.end method

.method public static values()[Lcom/android/common/appService/IDualCameraControl$DualCameraMode;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->gZ:[Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    return-object v0
.end method
