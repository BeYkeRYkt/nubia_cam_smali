.class public final enum Lcom/android/common/WaterMarkUtil$LOCATION;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum aiL:Lcom/android/common/WaterMarkUtil$LOCATION;

.field public static final enum aiM:Lcom/android/common/WaterMarkUtil$LOCATION;

.field private static final synthetic aiN:[Lcom/android/common/WaterMarkUtil$LOCATION;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/android/common/WaterMarkUtil$LOCATION;

    const-string/jumbo v1, "LEFT_BOTTOM"

    invoke-direct {v0, v1, v2}, Lcom/android/common/WaterMarkUtil$LOCATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/WaterMarkUtil$LOCATION;->aiL:Lcom/android/common/WaterMarkUtil$LOCATION;

    new-instance v0, Lcom/android/common/WaterMarkUtil$LOCATION;

    const-string/jumbo v1, "RIGHT_BOTTOM"

    invoke-direct {v0, v1, v3}, Lcom/android/common/WaterMarkUtil$LOCATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/WaterMarkUtil$LOCATION;->aiM:Lcom/android/common/WaterMarkUtil$LOCATION;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/common/WaterMarkUtil$LOCATION;

    sget-object v1, Lcom/android/common/WaterMarkUtil$LOCATION;->aiL:Lcom/android/common/WaterMarkUtil$LOCATION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/WaterMarkUtil$LOCATION;->aiM:Lcom/android/common/WaterMarkUtil$LOCATION;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/common/WaterMarkUtil$LOCATION;->aiN:[Lcom/android/common/WaterMarkUtil$LOCATION;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/WaterMarkUtil$LOCATION;
    .registers 2

    .prologue
    .line 59
    const-class v0, Lcom/android/common/WaterMarkUtil$LOCATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/common/WaterMarkUtil$LOCATION;

    return-object v0
.end method

.method public static values()[Lcom/android/common/WaterMarkUtil$LOCATION;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/common/WaterMarkUtil$LOCATION;->aiN:[Lcom/android/common/WaterMarkUtil$LOCATION;

    return-object v0
.end method
