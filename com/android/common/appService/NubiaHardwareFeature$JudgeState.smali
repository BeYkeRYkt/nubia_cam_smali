.class public final enum Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum iZ:Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

.field public static final enum ja:Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

.field public static final enum jb:Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

.field private static final synthetic jc:[Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

    const-string/jumbo v1, "UNSUPPROTED"

    invoke-direct {v0, v1, v2}, Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;->jb:Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

    new-instance v0, Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

    const-string/jumbo v1, "SUPPORTED"

    invoke-direct {v0, v1, v3}, Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;->iZ:Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

    new-instance v0, Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

    const-string/jumbo v1, "UNDEFINED"

    invoke-direct {v0, v1, v4}, Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;->ja:Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

    sget-object v1, Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;->jb:Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;->iZ:Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;->ja:Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;->jc:[Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;
    .registers 2

    .prologue
    .line 42
    const-class v0, Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

    return-object v0
.end method

.method public static values()[Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;->jc:[Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

    return-object v0
.end method
