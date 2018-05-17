.class public final enum Lcom/android/common/appService/StarFuncState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic kK:[Lcom/android/common/appService/StarFuncState;

.field public static final enum kL:Lcom/android/common/appService/StarFuncState;

.field public static final enum kM:Lcom/android/common/appService/StarFuncState;

.field public static final enum kN:Lcom/android/common/appService/StarFuncState;

.field public static final enum kO:Lcom/android/common/appService/StarFuncState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/android/common/appService/StarFuncState;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/common/appService/StarFuncState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/appService/StarFuncState;->kN:Lcom/android/common/appService/StarFuncState;

    .line 5
    new-instance v0, Lcom/android/common/appService/StarFuncState;

    const-string/jumbo v1, "COUNT_DOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/common/appService/StarFuncState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/appService/StarFuncState;->kM:Lcom/android/common/appService/StarFuncState;

    .line 6
    new-instance v0, Lcom/android/common/appService/StarFuncState;

    const-string/jumbo v1, "CAPTURING"

    invoke-direct {v0, v1, v4}, Lcom/android/common/appService/StarFuncState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/appService/StarFuncState;->kL:Lcom/android/common/appService/StarFuncState;

    .line 7
    new-instance v0, Lcom/android/common/appService/StarFuncState;

    const-string/jumbo v1, "WAITING"

    invoke-direct {v0, v1, v5}, Lcom/android/common/appService/StarFuncState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/appService/StarFuncState;->kO:Lcom/android/common/appService/StarFuncState;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/common/appService/StarFuncState;

    sget-object v1, Lcom/android/common/appService/StarFuncState;->kN:Lcom/android/common/appService/StarFuncState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/appService/StarFuncState;->kM:Lcom/android/common/appService/StarFuncState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/common/appService/StarFuncState;->kL:Lcom/android/common/appService/StarFuncState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/common/appService/StarFuncState;->kO:Lcom/android/common/appService/StarFuncState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/common/appService/StarFuncState;->kK:[Lcom/android/common/appService/StarFuncState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/appService/StarFuncState;
    .registers 2

    .prologue
    .line 3
    const-class v0, Lcom/android/common/appService/StarFuncState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/common/appService/StarFuncState;

    return-object v0
.end method

.method public static values()[Lcom/android/common/appService/StarFuncState;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/android/common/appService/StarFuncState;->kK:[Lcom/android/common/appService/StarFuncState;

    return-object v0
.end method
