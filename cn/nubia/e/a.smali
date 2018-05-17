.class public Lcn/nubia/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final btb:I

.field private static final btc:[Ljava/lang/String;


# instance fields
.field private btd:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const-string/jumbo v0, "NUBIA"

    .line 40
    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@40
    nop

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x14

    sput v0, Lcn/nubia/e/a;->btb:I

    const/4 v0, 0x5

    .line 42
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "version"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "reserved1"

    .line 43
    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "reserved2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "datasize"

    aput-object v2, v0, v1

    .line 42
    sput-object v0, Lcn/nubia/e/a;->btc:[Ljava/lang/String;

    .line 46
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcn/nubia/e/a;->btd:[B

    .line 51
    sget v0, Lcn/nubia/e/a;->btb:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/nubia/e/a;->btd:[B

    .line 52
    iget-object v0, p0, Lcn/nubia/e/a;->btd:[B

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    .line 53
    iget-object v0, p0, Lcn/nubia/e/a;->btd:[B

    const/16 v1, 0x15

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    .line 54
    iget-object v0, p0, Lcn/nubia/e/a;->btd:[B

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    .line 55
    iget-object v0, p0, Lcn/nubia/e/a;->btd:[B

    const/16 v1, 0x17

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    .line 56
    iget-object v0, p0, Lcn/nubia/e/a;->btd:[B

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    .line 57
    iget-object v0, p0, Lcn/nubia/e/a;->btd:[B

    const/16 v1, 0x19

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    .line 58
    iget-object v0, p0, Lcn/nubia/e/a;->btd:[B

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    .line 59
    iget-object v0, p0, Lcn/nubia/e/a;->btd:[B

    const/16 v1, 0x1b

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    .line 60
    iget-object v0, p0, Lcn/nubia/e/a;->btd:[B

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    .line 61
    iget-object v0, p0, Lcn/nubia/e/a;->btd:[B

    const/16 v1, 0x1d

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    .line 62
    return-void
.end method

.method public static bQb()Lcn/nubia/e/a;
    .registers 1

    .prologue
    .line 68
    new-instance v0, Lcn/nubia/e/a;

    invoke-direct {v0}, Lcn/nubia/e/a;-><init>()V

    return-object v0
.end method

.method private static bQf([BI)I
    .registers 4

    .prologue
    .line 191
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 192
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 191
    or-int/2addr v0, v1

    .line 193
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 191
    or-int/2addr v0, v1

    .line 194
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 191
    or-int/2addr v0, v1

    .line 195
    return v0
.end method


# virtual methods
.method public bQc(II)V
    .registers 6

    .prologue
    .line 132
    if-gez p1, :cond_19

    :cond_2
    const-string/jumbo v0, "NubiaFileHeader"

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid KEY_ID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_18
    return-void

    :cond_19
    const/4 v0, 0x4

    .line 132
    if-gt p1, v0, :cond_2

    .line 133
    iget-object v0, p0, Lcn/nubia/e/a;->btd:[B

    mul-int/lit8 v1, p1, 0x4

    shr-int/lit8 v2, p2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 134
    iget-object v0, p0, Lcn/nubia/e/a;->btd:[B

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 135
    iget-object v0, p0, Lcn/nubia/e/a;->btd:[B

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 136
    iget-object v0, p0, Lcn/nubia/e/a;->btd:[B

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x3

    shr-int/lit8 v2, p2, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_18
.end method

.method public bQd()[B
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcn/nubia/e/a;->btd:[B

    return-object v0
.end method

.method public bQe()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    .line 177
    if-gt v0, v1, :cond_31

    const-string/jumbo v1, "NubiaFileHeader"

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/nubia/e/a;->btc:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/e/a;->btd:[B

    mul-int/lit8 v4, v0, 0x4

    invoke-static {v3, v4}, Lcn/nubia/e/a;->bQf([BI)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    :cond_31
    return-void
.end method
