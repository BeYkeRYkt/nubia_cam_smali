.class public final enum Lcom/android/clone/CloneStatus$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum aTA:Lcom/android/clone/CloneStatus$Status;

.field public static final enum aTB:Lcom/android/clone/CloneStatus$Status;

.field public static final enum aTC:Lcom/android/clone/CloneStatus$Status;

.field public static final enum aTD:Lcom/android/clone/CloneStatus$Status;

.field private static final synthetic aTE:[Lcom/android/clone/CloneStatus$Status;

.field public static final enum aTv:Lcom/android/clone/CloneStatus$Status;

.field public static final enum aTw:Lcom/android/clone/CloneStatus$Status;

.field public static final enum aTx:Lcom/android/clone/CloneStatus$Status;

.field public static final enum aTy:Lcom/android/clone/CloneStatus$Status;

.field public static final enum aTz:Lcom/android/clone/CloneStatus$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/android/clone/CloneStatus$Status;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/android/clone/CloneStatus$Status;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lcom/android/clone/CloneStatus$Status;->aTw:Lcom/android/clone/CloneStatus$Status;

    .line 29
    new-instance v0, Lcom/android/clone/CloneStatus$Status;

    const-string/jumbo v1, "SAVE_DATA"

    invoke-direct {v0, v1, v4}, Lcom/android/clone/CloneStatus$Status;-><init>(Ljava/lang/String;I)V

    .line 32
    sput-object v0, Lcom/android/clone/CloneStatus$Status;->aTD:Lcom/android/clone/CloneStatus$Status;

    .line 34
    new-instance v0, Lcom/android/clone/CloneStatus$Status;

    const-string/jumbo v1, "COMPOSITION"

    invoke-direct {v0, v1, v5}, Lcom/android/clone/CloneStatus$Status;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v0, Lcom/android/clone/CloneStatus$Status;->aTy:Lcom/android/clone/CloneStatus$Status;

    .line 39
    new-instance v0, Lcom/android/clone/CloneStatus$Status;

    const-string/jumbo v1, "COMPOSECON_FIRM"

    invoke-direct {v0, v1, v6}, Lcom/android/clone/CloneStatus$Status;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Lcom/android/clone/CloneStatus$Status;->aTx:Lcom/android/clone/CloneStatus$Status;

    .line 44
    new-instance v0, Lcom/android/clone/CloneStatus$Status;

    const-string/jumbo v1, "CLEAN_DATA"

    invoke-direct {v0, v1, v7}, Lcom/android/clone/CloneStatus$Status;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v0, Lcom/android/clone/CloneStatus$Status;->aTz:Lcom/android/clone/CloneStatus$Status;

    .line 49
    new-instance v0, Lcom/android/clone/CloneStatus$Status;

    const-string/jumbo v1, "EDIT_GET_PICTURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/clone/CloneStatus$Status;-><init>(Ljava/lang/String;I)V

    .line 52
    sput-object v0, Lcom/android/clone/CloneStatus$Status;->aTA:Lcom/android/clone/CloneStatus$Status;

    .line 54
    new-instance v0, Lcom/android/clone/CloneStatus$Status;

    const-string/jumbo v1, "PAINT_CONTOUR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/clone/CloneStatus$Status;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v0, Lcom/android/clone/CloneStatus$Status;->aTC:Lcom/android/clone/CloneStatus$Status;

    .line 59
    new-instance v0, Lcom/android/clone/CloneStatus$Status;

    const-string/jumbo v1, "EDIT_PREVIEW"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/clone/CloneStatus$Status;-><init>(Ljava/lang/String;I)V

    .line 62
    sput-object v0, Lcom/android/clone/CloneStatus$Status;->aTv:Lcom/android/clone/CloneStatus$Status;

    .line 64
    new-instance v0, Lcom/android/clone/CloneStatus$Status;

    const-string/jumbo v1, "ERASE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/clone/CloneStatus$Status;-><init>(Ljava/lang/String;I)V

    .line 67
    sput-object v0, Lcom/android/clone/CloneStatus$Status;->aTB:Lcom/android/clone/CloneStatus$Status;

    .line 23
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/clone/CloneStatus$Status;

    sget-object v1, Lcom/android/clone/CloneStatus$Status;->aTw:Lcom/android/clone/CloneStatus$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/clone/CloneStatus$Status;->aTD:Lcom/android/clone/CloneStatus$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/clone/CloneStatus$Status;->aTy:Lcom/android/clone/CloneStatus$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/clone/CloneStatus$Status;->aTx:Lcom/android/clone/CloneStatus$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/clone/CloneStatus$Status;->aTz:Lcom/android/clone/CloneStatus$Status;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/clone/CloneStatus$Status;->aTA:Lcom/android/clone/CloneStatus$Status;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/clone/CloneStatus$Status;->aTC:Lcom/android/clone/CloneStatus$Status;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/clone/CloneStatus$Status;->aTv:Lcom/android/clone/CloneStatus$Status;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/clone/CloneStatus$Status;->aTB:Lcom/android/clone/CloneStatus$Status;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/clone/CloneStatus$Status;->aTE:[Lcom/android/clone/CloneStatus$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/clone/CloneStatus$Status;
    .registers 2

    .prologue
    .line 23
    const-class v0, Lcom/android/clone/CloneStatus$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/clone/CloneStatus$Status;

    return-object v0
.end method

.method public static values()[Lcom/android/clone/CloneStatus$Status;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/clone/CloneStatus$Status;->aTE:[Lcom/android/clone/CloneStatus$Status;

    return-object v0
.end method
