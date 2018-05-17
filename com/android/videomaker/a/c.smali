.class public Lcom/android/videomaker/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aJq:[C

.field private static aJr:[C

.field private static aJs:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/videomaker/a/c;->aJs:Ljava/util/Random;

    .line 44
    const-string/jumbo v0, "0123456789abcdefghijklmnopqrstuvwxyz0123456789"

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@57
    nop

    move-result-object v0

    .line 43
    sput-object v0, Lcom/android/videomaker/a/c;->aJr:[C

    .line 49
    const-string/jumbo v0, "0123456789"

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@57
    nop

    move-result-object v0

    sput-object v0, Lcom/android/videomaker/a/c;->aJq:[C

    .line 29
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aYo(Landroid/content/Context;J)Ljava/lang/String;
    .registers 12

    .prologue
    const-wide/32 v2, 0x36ee80

    const-wide/32 v6, 0xea60

    const-wide/16 v4, 0x3e8

    .line 113
    div-long v0, p1, v2

    .line 114
    rem-long v0, p1, v2

    .line 115
    div-long v2, v0, v6

    .line 116
    rem-long/2addr v0, v6

    .line 117
    div-long v2, v0, v4

    .line 118
    rem-long/2addr v0, v4

    .line 119
    const-wide/16 v4, 0x64

    div-long/2addr v0, v4

    .line 122
    const-string/jumbo v4, "%d.%01d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v5, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aYp(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 70
    const/4 v0, 0x1

    if-ge p0, v0, :cond_5

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_5
    new-array v1, p0, [C

    .line 75
    const/4 v0, 0x0

    :goto_8
    array-length v2, v1

    if-ge v0, v2, :cond_1f

    .line 76
    sget-object v2, Lcom/android/videomaker/a/c;->aJr:[C

    sget-object v3, Lcom/android/videomaker/a/c;->aJs:Ljava/util/Random;

    sget-object v4, Lcom/android/videomaker/a/c;->aJr:[C

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 79
    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
