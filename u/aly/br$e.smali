.class public final enum Lu/aly/br$e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lu/aly/aF;


# static fields
.field public static final enum bzG:Lu/aly/br$e;

.field public static final enum bzH:Lu/aly/br$e;

.field public static final enum bzI:Lu/aly/br$e;

.field public static final enum bzJ:Lu/aly/br$e;

.field public static final enum bzK:Lu/aly/br$e;

.field public static final enum bzL:Lu/aly/br$e;

.field public static final enum bzM:Lu/aly/br$e;

.field public static final enum bzN:Lu/aly/br$e;

.field public static final enum bzO:Lu/aly/br$e;

.field public static final enum bzP:Lu/aly/br$e;

.field private static final bzQ:Ljava/util/Map;

.field private static final synthetic bzR:[Lu/aly/br$e;


# instance fields
.field private final l:S

.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    new-instance v0, Lu/aly/br$e;

    const-string/jumbo v1, "VERSION"

    const-string/jumbo v2, "version"

    invoke-direct {v0, v1, v5, v6, v2}, Lu/aly/br$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br$e;->bzG:Lu/aly/br$e;

    .line 65
    new-instance v0, Lu/aly/br$e;

    const-string/jumbo v1, "ADDRESS"

    const-string/jumbo v2, "address"

    invoke-direct {v0, v1, v6, v7, v2}, Lu/aly/br$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br$e;->bzH:Lu/aly/br$e;

    .line 66
    new-instance v0, Lu/aly/br$e;

    const-string/jumbo v1, "SIGNATURE"

    const-string/jumbo v2, "signature"

    invoke-direct {v0, v1, v7, v8, v2}, Lu/aly/br$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br$e;->bzI:Lu/aly/br$e;

    .line 67
    new-instance v0, Lu/aly/br$e;

    const-string/jumbo v1, "SERIAL_NUM"

    const-string/jumbo v2, "serial_num"

    invoke-direct {v0, v1, v8, v9, v2}, Lu/aly/br$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br$e;->bzJ:Lu/aly/br$e;

    .line 68
    new-instance v0, Lu/aly/br$e;

    const-string/jumbo v1, "TS_SECS"

    const-string/jumbo v2, "ts_secs"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v9, v3, v2}, Lu/aly/br$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br$e;->bzK:Lu/aly/br$e;

    .line 69
    new-instance v0, Lu/aly/br$e;

    const-string/jumbo v1, "LENGTH"

    const/4 v2, 0x5

    const-string/jumbo v3, "length"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/br$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br$e;->bzL:Lu/aly/br$e;

    .line 70
    new-instance v0, Lu/aly/br$e;

    const-string/jumbo v1, "ENTITY"

    const/4 v2, 0x6

    const-string/jumbo v3, "entity"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/br$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br$e;->bzM:Lu/aly/br$e;

    .line 71
    new-instance v0, Lu/aly/br$e;

    const-string/jumbo v1, "GUID"

    const/4 v2, 0x7

    const-string/jumbo v3, "guid"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/br$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br$e;->bzN:Lu/aly/br$e;

    .line 72
    new-instance v0, Lu/aly/br$e;

    const-string/jumbo v1, "CHECKSUM"

    const/16 v2, 0x8

    const-string/jumbo v3, "checksum"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/br$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br$e;->bzO:Lu/aly/br$e;

    .line 73
    new-instance v0, Lu/aly/br$e;

    const-string/jumbo v1, "CODEX"

    const/16 v2, 0x9

    const-string/jumbo v3, "codex"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/br$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br$e;->bzP:Lu/aly/br$e;

    const/16 v0, 0xa

    .line 63
    new-array v0, v0, [Lu/aly/br$e;

    sget-object v1, Lu/aly/br$e;->bzG:Lu/aly/br$e;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/br$e;->bzH:Lu/aly/br$e;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/br$e;->bzI:Lu/aly/br$e;

    aput-object v1, v0, v7

    sget-object v1, Lu/aly/br$e;->bzJ:Lu/aly/br$e;

    aput-object v1, v0, v8

    sget-object v1, Lu/aly/br$e;->bzK:Lu/aly/br$e;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lu/aly/br$e;->bzL:Lu/aly/br$e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lu/aly/br$e;->bzM:Lu/aly/br$e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lu/aly/br$e;->bzN:Lu/aly/br$e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lu/aly/br$e;->bzO:Lu/aly/br$e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lu/aly/br$e;->bzP:Lu/aly/br$e;

    aput-object v2, v0, v1

    sput-object v0, Lu/aly/br$e;->bzR:[Lu/aly/br$e;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/br$e;->bzQ:Ljava/util/Map;

    const-class v0, Lu/aly/br$e;

    .line 78
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@17
    nop

    move-result-object v1

    :goto_dd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e4

    .line 81
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 78
    :cond_e4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/br$e;

    .line 79
    sget-object v2, Lu/aly/br$e;->bzQ:Ljava/util/Map;

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@17
    nop

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_dd
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .registers 6

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 134
    int-to-short v0, p3

    iput-short v0, p0, Lu/aly/br$e;->l:S

    .line 135
    iput-object p4, p0, Lu/aly/br$e;->m:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/br$e;
    .registers 2

    .prologue
    const-class v0, Lu/aly/br$e;

    .line 63
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/br$e;

    return-object v0
.end method

.method public static values()[Lu/aly/br$e;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lu/aly/br$e;->bzR:[Lu/aly/br$e;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/br$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .registers 2

    .prologue
    .line 139
    iget-short v0, p0, Lu/aly/br$e;->l:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lu/aly/br$e;->m:Ljava/lang/String;

    return-object v0
.end method
