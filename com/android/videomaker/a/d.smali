.class public Lcom/android/videomaker/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static aJt:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23
    const-wide/16 v0, 0x1f4

    sput-wide v0, Lcom/android/videomaker/a/d;->aJt:J

    .line 22
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aYq(J)V
    .registers 2

    .prologue
    .line 38
    sput-wide p0, Lcom/android/videomaker/a/d;->aJt:J

    .line 37
    return-void
.end method

.method public static aYr()J
    .registers 2

    .prologue
    .line 42
    sget-wide v0, Lcom/android/videomaker/a/d;->aJt:J

    return-wide v0
.end method
