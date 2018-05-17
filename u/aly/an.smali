.class public final enum Lu/aly/an;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum bxd:Lu/aly/an;

.field public static final enum bxe:Lu/aly/an;

.field public static final enum bxf:Lu/aly/an;

.field public static final enum bxg:Lu/aly/an;

.field private static final synthetic bxh:[Lu/aly/an;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lu/aly/an;

    const-string/jumbo v1, "ACCESS_TYPE_UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lu/aly/an;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/an;->bxd:Lu/aly/an;

    .line 17
    new-instance v0, Lu/aly/an;

    const-string/jumbo v1, "ACCESS_TYPE_2G_3G"

    invoke-direct {v0, v1, v3, v3}, Lu/aly/an;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/an;->bxe:Lu/aly/an;

    .line 18
    new-instance v0, Lu/aly/an;

    const-string/jumbo v1, "ACCESS_TYPE_WIFI"

    invoke-direct {v0, v1, v4, v4}, Lu/aly/an;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/an;->bxf:Lu/aly/an;

    .line 19
    new-instance v0, Lu/aly/an;

    const-string/jumbo v1, "ACCESS_TYPE_ETHERNET"

    invoke-direct {v0, v1, v5, v5}, Lu/aly/an;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/an;->bxg:Lu/aly/an;

    const/4 v0, 0x4

    .line 15
    new-array v0, v0, [Lu/aly/an;

    sget-object v1, Lu/aly/an;->bxd:Lu/aly/an;

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/an;->bxe:Lu/aly/an;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/an;->bxf:Lu/aly/an;

    aput-object v1, v0, v4

    sget-object v1, Lu/aly/an;->bxg:Lu/aly/an;

    aput-object v1, v0, v5

    sput-object v0, Lu/aly/an;->bxh:[Lu/aly/an;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lu/aly/an;->e:I

    .line 25
    return-void
.end method

.method public static a(I)Lu/aly/an;
    .registers 2

    .prologue
    .line 39
    packed-switch p0, :pswitch_data_12

    const/4 v0, 0x0

    .line 49
    return-object v0

    .line 41
    :pswitch_5
    sget-object v0, Lu/aly/an;->bxd:Lu/aly/an;

    return-object v0

    .line 43
    :pswitch_8
    sget-object v0, Lu/aly/an;->bxe:Lu/aly/an;

    return-object v0

    .line 45
    :pswitch_b
    sget-object v0, Lu/aly/an;->bxf:Lu/aly/an;

    return-object v0

    .line 47
    :pswitch_e
    sget-object v0, Lu/aly/an;->bxg:Lu/aly/an;

    return-object v0

    .line 39
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/an;
    .registers 2

    .prologue
    const-class v0, Lu/aly/an;

    .line 15
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/an;

    return-object v0
.end method

.method public static values()[Lu/aly/an;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lu/aly/an;->bxh:[Lu/aly/an;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/an;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lu/aly/an;->e:I

    return v0
.end method
