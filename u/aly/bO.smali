.class synthetic Lu/aly/bO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 139
    invoke-static {}, Lu/aly/bj$a;->values()[Lu/aly/bj$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lu/aly/bO;->a:[I

    :try_start_9
    sget-object v0, Lu/aly/bO;->a:[I

    sget-object v1, Lu/aly/bj$a;->btr:Lu/aly/bj$a;

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@15
    nop

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lu/aly/bO;->a:[I

    sget-object v1, Lu/aly/bj$a;->bts:Lu/aly/bj$a;

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@15
    nop

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method
