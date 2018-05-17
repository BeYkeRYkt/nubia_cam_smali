.class public final enum Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum gi:Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

.field public static final enum gj:Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

.field private static final synthetic gk:[Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    new-instance v0, Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    const-string/jumbo v1, "FOCUSED"

    invoke-direct {v0, v1, v2}, Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;->gi:Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    new-instance v0, Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;->gj:Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    .line 212
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    sget-object v1, Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;->gi:Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;->gj:Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;->gk:[Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;
    .registers 2

    .prologue
    .line 212
    const-class v0, Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    return-object v0
.end method

.method public static values()[Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;
    .registers 1

    .prologue
    .line 212
    sget-object v0, Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;->gk:[Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    return-object v0
.end method
