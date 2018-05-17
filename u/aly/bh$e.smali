.class public final enum Lu/aly/bh$e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lu/aly/aF;


# static fields
.field private static final synthetic buA:[Lu/aly/bh$e;

.field public static final enum bup:Lu/aly/bh$e;

.field public static final enum buq:Lu/aly/bh$e;

.field public static final enum bur:Lu/aly/bh$e;

.field public static final enum bus:Lu/aly/bh$e;

.field public static final enum but:Lu/aly/bh$e;

.field public static final enum buu:Lu/aly/bh$e;

.field public static final enum buv:Lu/aly/bh$e;

.field public static final enum buw:Lu/aly/bh$e;

.field public static final enum bux:Lu/aly/bh$e;

.field public static final enum buy:Lu/aly/bh$e;

.field private static final buz:Ljava/util/Map;


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

    .line 68
    new-instance v0, Lu/aly/bh$e;

    const-string/jumbo v1, "TIME_ZONE"

    const-string/jumbo v2, "time_zone"

    invoke-direct {v0, v1, v5, v6, v2}, Lu/aly/bh$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bh$e;->bup:Lu/aly/bh$e;

    .line 69
    new-instance v0, Lu/aly/bh$e;

    const-string/jumbo v1, "LANGUAGE"

    const-string/jumbo v2, "language"

    invoke-direct {v0, v1, v6, v7, v2}, Lu/aly/bh$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bh$e;->buq:Lu/aly/bh$e;

    .line 70
    new-instance v0, Lu/aly/bh$e;

    const-string/jumbo v1, "COUNTRY"

    const-string/jumbo v2, "country"

    invoke-direct {v0, v1, v7, v8, v2}, Lu/aly/bh$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bh$e;->bur:Lu/aly/bh$e;

    .line 71
    new-instance v0, Lu/aly/bh$e;

    const-string/jumbo v1, "LATITUDE"

    const-string/jumbo v2, "latitude"

    invoke-direct {v0, v1, v8, v9, v2}, Lu/aly/bh$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bh$e;->bus:Lu/aly/bh$e;

    .line 72
    new-instance v0, Lu/aly/bh$e;

    const-string/jumbo v1, "LONGITUDE"

    const-string/jumbo v2, "longitude"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v9, v3, v2}, Lu/aly/bh$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bh$e;->but:Lu/aly/bh$e;

    .line 73
    new-instance v0, Lu/aly/bh$e;

    const-string/jumbo v1, "CARRIER"

    const/4 v2, 0x5

    const-string/jumbo v3, "carrier"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/bh$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bh$e;->buu:Lu/aly/bh$e;

    .line 74
    new-instance v0, Lu/aly/bh$e;

    const-string/jumbo v1, "LATENCY"

    const/4 v2, 0x6

    const-string/jumbo v3, "latency"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/bh$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bh$e;->buv:Lu/aly/bh$e;

    .line 75
    new-instance v0, Lu/aly/bh$e;

    const-string/jumbo v1, "DISPLAY_NAME"

    const/4 v2, 0x7

    const-string/jumbo v3, "display_name"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/bh$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bh$e;->buw:Lu/aly/bh$e;

    .line 80
    new-instance v0, Lu/aly/bh$e;

    const-string/jumbo v1, "ACCESS_TYPE"

    const/16 v2, 0x8

    const-string/jumbo v3, "access_type"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/bh$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bh$e;->bux:Lu/aly/bh$e;

    .line 81
    new-instance v0, Lu/aly/bh$e;

    const-string/jumbo v1, "ACCESS_SUBTYPE"

    const/16 v2, 0x9

    const-string/jumbo v3, "access_subtype"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/bh$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bh$e;->buy:Lu/aly/bh$e;

    const/16 v0, 0xa

    .line 67
    new-array v0, v0, [Lu/aly/bh$e;

    sget-object v1, Lu/aly/bh$e;->bup:Lu/aly/bh$e;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/bh$e;->buq:Lu/aly/bh$e;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/bh$e;->bur:Lu/aly/bh$e;

    aput-object v1, v0, v7

    sget-object v1, Lu/aly/bh$e;->bus:Lu/aly/bh$e;

    aput-object v1, v0, v8

    sget-object v1, Lu/aly/bh$e;->but:Lu/aly/bh$e;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lu/aly/bh$e;->buu:Lu/aly/bh$e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lu/aly/bh$e;->buv:Lu/aly/bh$e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lu/aly/bh$e;->buw:Lu/aly/bh$e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lu/aly/bh$e;->bux:Lu/aly/bh$e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lu/aly/bh$e;->buy:Lu/aly/bh$e;

    aput-object v2, v0, v1

    sput-object v0, Lu/aly/bh$e;->buA:[Lu/aly/bh$e;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bh$e;->buz:Ljava/util/Map;

    const-class v0, Lu/aly/bh$e;

    .line 86
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

    .line 89
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 86
    :cond_e4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bh$e;

    .line 87
    sget-object v2, Lu/aly/bh$e;->buz:Ljava/util/Map;

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
    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 142
    int-to-short v0, p3

    iput-short v0, p0, Lu/aly/bh$e;->l:S

    .line 143
    iput-object p4, p0, Lu/aly/bh$e;->m:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/bh$e;
    .registers 2

    .prologue
    const-class v0, Lu/aly/bh$e;

    .line 67
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/bh$e;

    return-object v0
.end method

.method public static values()[Lu/aly/bh$e;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lu/aly/bh$e;->buA:[Lu/aly/bh$e;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/bh$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .registers 2

    .prologue
    .line 147
    iget-short v0, p0, Lu/aly/bh$e;->l:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lu/aly/bh$e;->m:Ljava/lang/String;

    return-object v0
.end method
