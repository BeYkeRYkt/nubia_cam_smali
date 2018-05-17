.class public final enum Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum eS:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

.field public static final enum eT:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

.field public static final enum eU:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

.field public static final enum eV:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

.field public static final enum eW:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

.field private static final synthetic eX:[Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    new-instance v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    const-string/jumbo v1, "CAF"

    invoke-direct {v0, v1, v2}, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eT:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    new-instance v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    const-string/jumbo v1, "AUTO"

    invoke-direct {v0, v1, v3}, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eS:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    new-instance v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    const-string/jumbo v1, "MACRO"

    invoke-direct {v0, v1, v4}, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eV:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    new-instance v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    const-string/jumbo v1, "EDOF"

    invoke-direct {v0, v1, v5}, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eU:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    new-instance v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    const-string/jumbo v1, "MANUAL"

    invoke-direct {v0, v1, v6}, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eW:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    .line 139
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eT:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eS:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eV:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eU:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eW:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eX:[Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;
    .registers 2

    .prologue
    .line 139
    const-class v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    return-object v0
.end method

.method public static values()[Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;
    .registers 1

    .prologue
    .line 139
    sget-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eX:[Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    return-object v0
.end method
