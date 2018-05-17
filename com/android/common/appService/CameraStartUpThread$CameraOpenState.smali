.class public final enum Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic kt:[Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

.field public static final enum ku:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

.field public static final enum kv:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

.field public static final enum kw:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

.field public static final enum kx:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->kx:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    new-instance v0, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    const-string/jumbo v1, "FAIL_CAMERA_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->kw:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    new-instance v0, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    const-string/jumbo v1, "FAIL_CAMERA_DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->kv:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    new-instance v0, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    const-string/jumbo v1, "FAIL_CAMERAID_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->ku:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    sget-object v1, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->kx:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->kw:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->kv:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->ku:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->kt:[Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;
    .registers 2

    .prologue
    .line 23
    const-class v0, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    return-object v0
.end method

.method public static values()[Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->kt:[Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    return-object v0
.end method
