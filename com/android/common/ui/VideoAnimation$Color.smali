.class public final enum Lcom/android/common/ui/VideoAnimation$Color;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum sA:Lcom/android/common/ui/VideoAnimation$Color;

.field private static final synthetic sB:[Lcom/android/common/ui/VideoAnimation$Color;

.field public static final enum sz:Lcom/android/common/ui/VideoAnimation$Color;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/android/common/ui/VideoAnimation$Color;

    const-string/jumbo v1, "WHITE"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/common/ui/VideoAnimation$Color;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/ui/VideoAnimation$Color;->sA:Lcom/android/common/ui/VideoAnimation$Color;

    new-instance v0, Lcom/android/common/ui/VideoAnimation$Color;

    const-string/jumbo v1, "RED"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/common/ui/VideoAnimation$Color;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/ui/VideoAnimation$Color;->sz:Lcom/android/common/ui/VideoAnimation$Color;

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/common/ui/VideoAnimation$Color;

    sget-object v1, Lcom/android/common/ui/VideoAnimation$Color;->sA:Lcom/android/common/ui/VideoAnimation$Color;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/ui/VideoAnimation$Color;->sz:Lcom/android/common/ui/VideoAnimation$Color;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/common/ui/VideoAnimation$Color;->sB:[Lcom/android/common/ui/VideoAnimation$Color;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/android/common/ui/VideoAnimation$Color;->value:I

    .line 63
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/ui/VideoAnimation$Color;
    .registers 2

    .prologue
    .line 60
    const-class v0, Lcom/android/common/ui/VideoAnimation$Color;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/VideoAnimation$Color;

    return-object v0
.end method

.method public static values()[Lcom/android/common/ui/VideoAnimation$Color;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/common/ui/VideoAnimation$Color;->sB:[Lcom/android/common/ui/VideoAnimation$Color;

    return-object v0
.end method

.method static xt(I)Lcom/android/common/ui/VideoAnimation$Color;
    .registers 2

    .prologue
    .line 68
    packed-switch p0, :pswitch_data_a

    .line 72
    sget-object v0, Lcom/android/common/ui/VideoAnimation$Color;->sz:Lcom/android/common/ui/VideoAnimation$Color;

    return-object v0

    .line 70
    :pswitch_6
    sget-object v0, Lcom/android/common/ui/VideoAnimation$Color;->sA:Lcom/android/common/ui/VideoAnimation$Color;

    return-object v0

    .line 68
    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
