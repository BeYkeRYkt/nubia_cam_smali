.class public final enum Lcom/android/captureCamera/CaptureCameraState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum azp:Lcom/android/captureCamera/CaptureCameraState;

.field public static final enum azq:Lcom/android/captureCamera/CaptureCameraState;

.field public static final enum azr:Lcom/android/captureCamera/CaptureCameraState;

.field private static final synthetic azs:[Lcom/android/captureCamera/CaptureCameraState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/android/captureCamera/CaptureCameraState;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/captureCamera/CaptureCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/captureCamera/CaptureCameraState;->azp:Lcom/android/captureCamera/CaptureCameraState;

    .line 5
    new-instance v0, Lcom/android/captureCamera/CaptureCameraState;

    const-string/jumbo v1, "EXPSOUR_CAPTUREING"

    invoke-direct {v0, v1, v3}, Lcom/android/captureCamera/CaptureCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/captureCamera/CaptureCameraState;->azr:Lcom/android/captureCamera/CaptureCameraState;

    .line 6
    new-instance v0, Lcom/android/captureCamera/CaptureCameraState;

    const-string/jumbo v1, "CAPTUREING"

    invoke-direct {v0, v1, v4}, Lcom/android/captureCamera/CaptureCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/captureCamera/CaptureCameraState;->azq:Lcom/android/captureCamera/CaptureCameraState;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/captureCamera/CaptureCameraState;

    sget-object v1, Lcom/android/captureCamera/CaptureCameraState;->azp:Lcom/android/captureCamera/CaptureCameraState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/captureCamera/CaptureCameraState;->azr:Lcom/android/captureCamera/CaptureCameraState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/captureCamera/CaptureCameraState;->azq:Lcom/android/captureCamera/CaptureCameraState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/captureCamera/CaptureCameraState;->azs:[Lcom/android/captureCamera/CaptureCameraState;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/captureCamera/CaptureCameraState;
    .registers 2

    .prologue
    .line 3
    const-class v0, Lcom/android/captureCamera/CaptureCameraState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/captureCamera/CaptureCameraState;

    return-object v0
.end method

.method public static values()[Lcom/android/captureCamera/CaptureCameraState;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/android/captureCamera/CaptureCameraState;->azs:[Lcom/android/captureCamera/CaptureCameraState;

    return-object v0
.end method