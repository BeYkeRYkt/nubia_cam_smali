.class public final enum Lu/aly/ay;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum bzw:Lu/aly/ay;

.field public static final enum bzx:Lu/aly/ay;

.field public static final enum bzy:Lu/aly/ay;

.field private static final synthetic bzz:[Lu/aly/ay;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lu/aly/ay;

    const-string/jumbo v1, "MALE"

    invoke-direct {v0, v1, v2, v2}, Lu/aly/ay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/ay;->bzw:Lu/aly/ay;

    .line 17
    new-instance v0, Lu/aly/ay;

    const-string/jumbo v1, "FEMALE"

    invoke-direct {v0, v1, v3, v3}, Lu/aly/ay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/ay;->bzx:Lu/aly/ay;

    .line 18
    new-instance v0, Lu/aly/ay;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lu/aly/ay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/ay;->bzy:Lu/aly/ay;

    const/4 v0, 0x3

    .line 15
    new-array v0, v0, [Lu/aly/ay;

    sget-object v1, Lu/aly/ay;->bzw:Lu/aly/ay;

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/ay;->bzx:Lu/aly/ay;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/ay;->bzy:Lu/aly/ay;

    aput-object v1, v0, v4

    sput-object v0, Lu/aly/ay;->bzz:[Lu/aly/ay;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lu/aly/ay;->d:I

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/ay;
    .registers 2

    .prologue
    const-class v0, Lu/aly/ay;

    .line 15
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/ay;

    return-object v0
.end method

.method public static values()[Lu/aly/ay;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lu/aly/ay;->bzz:[Lu/aly/ay;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/ay;

    return-object v0
.end method
