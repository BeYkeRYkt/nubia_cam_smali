.class public final enum Lcom/android/common/Util$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ahG:Lcom/android/common/Util$State;

.field public static final enum ahH:Lcom/android/common/Util$State;

.field public static final enum ahI:Lcom/android/common/Util$State;

.field public static final enum ahJ:Lcom/android/common/Util$State;

.field private static final synthetic ahK:[Lcom/android/common/Util$State;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1068
    new-instance v0, Lcom/android/common/Util$State;

    const-string/jumbo v1, "LIGHT_ON"

    invoke-direct {v0, v1, v2}, Lcom/android/common/Util$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/Util$State;->ahI:Lcom/android/common/Util$State;

    new-instance v0, Lcom/android/common/Util$State;

    const-string/jumbo v1, "LIGHT_OFF"

    invoke-direct {v0, v1, v3}, Lcom/android/common/Util$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/Util$State;->ahH:Lcom/android/common/Util$State;

    new-instance v0, Lcom/android/common/Util$State;

    const-string/jumbo v1, "SOS_ON"

    invoke-direct {v0, v1, v4}, Lcom/android/common/Util$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/Util$State;->ahJ:Lcom/android/common/Util$State;

    new-instance v0, Lcom/android/common/Util$State;

    const-string/jumbo v1, "LIGHTANDSOS_ON"

    invoke-direct {v0, v1, v5}, Lcom/android/common/Util$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/Util$State;->ahG:Lcom/android/common/Util$State;

    .line 1067
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/common/Util$State;

    sget-object v1, Lcom/android/common/Util$State;->ahI:Lcom/android/common/Util$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/Util$State;->ahH:Lcom/android/common/Util$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/common/Util$State;->ahJ:Lcom/android/common/Util$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/common/Util$State;->ahG:Lcom/android/common/Util$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/common/Util$State;->ahK:[Lcom/android/common/Util$State;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 1067
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/Util$State;
    .registers 2

    .prologue
    .line 1067
    const-class v0, Lcom/android/common/Util$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/common/Util$State;

    return-object v0
.end method

.method public static values()[Lcom/android/common/Util$State;
    .registers 1

    .prologue
    .line 1067
    sget-object v0, Lcom/android/common/Util$State;->ahK:[Lcom/android/common/Util$State;

    return-object v0
.end method
