.class public final enum Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum iu:Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

.field public static final enum iv:Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

.field private static final synthetic iw:[Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

    const-string/jumbo v1, "HALFPRESSDOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;->iu:Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

    new-instance v0, Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

    const-string/jumbo v1, "HALFPRESSUP"

    invoke-direct {v0, v1, v3}, Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;->iv:Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

    sget-object v1, Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;->iu:Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;->iv:Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;->iw:[Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;
    .registers 2

    .prologue
    .line 15
    const-class v0, Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

    return-object v0
.end method

.method public static values()[Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;->iw:[Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

    return-object v0
.end method
