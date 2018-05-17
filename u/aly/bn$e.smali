.class public final enum Lu/aly/bn$e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lu/aly/aF;


# static fields
.field public static final enum bvI:Lu/aly/bn$e;

.field public static final enum bvJ:Lu/aly/bn$e;

.field public static final enum bvK:Lu/aly/bn$e;

.field public static final enum bvL:Lu/aly/bn$e;

.field public static final enum bvM:Lu/aly/bn$e;

.field public static final enum bvN:Lu/aly/bn$e;

.field public static final enum bvO:Lu/aly/bn$e;

.field private static final bvP:Ljava/util/Map;

.field private static final synthetic bvQ:[Lu/aly/bn$e;


# instance fields
.field private final i:S

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 59
    new-instance v0, Lu/aly/bn$e;

    const-string/jumbo v1, "ID"

    const-string/jumbo v2, "id"

    invoke-direct {v0, v1, v5, v6, v2}, Lu/aly/bn$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bn$e;->bvI:Lu/aly/bn$e;

    .line 60
    new-instance v0, Lu/aly/bn$e;

    const-string/jumbo v1, "START_TIME"

    const-string/jumbo v2, "start_time"

    invoke-direct {v0, v1, v6, v7, v2}, Lu/aly/bn$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bn$e;->bvJ:Lu/aly/bn$e;

    .line 61
    new-instance v0, Lu/aly/bn$e;

    const-string/jumbo v1, "END_TIME"

    const-string/jumbo v2, "end_time"

    invoke-direct {v0, v1, v7, v8, v2}, Lu/aly/bn$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bn$e;->bvK:Lu/aly/bn$e;

    .line 62
    new-instance v0, Lu/aly/bn$e;

    const-string/jumbo v1, "DURATION"

    const-string/jumbo v2, "duration"

    invoke-direct {v0, v1, v8, v9, v2}, Lu/aly/bn$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bn$e;->bvL:Lu/aly/bn$e;

    .line 63
    new-instance v0, Lu/aly/bn$e;

    const-string/jumbo v1, "PAGES"

    const-string/jumbo v2, "pages"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v9, v3, v2}, Lu/aly/bn$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bn$e;->bvM:Lu/aly/bn$e;

    .line 64
    new-instance v0, Lu/aly/bn$e;

    const-string/jumbo v1, "LOCATIONS"

    const/4 v2, 0x5

    const-string/jumbo v3, "locations"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/bn$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bn$e;->bvN:Lu/aly/bn$e;

    .line 65
    new-instance v0, Lu/aly/bn$e;

    const-string/jumbo v1, "TRAFFIC"

    const/4 v2, 0x6

    const-string/jumbo v3, "traffic"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/bn$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bn$e;->bvO:Lu/aly/bn$e;

    const/4 v0, 0x7

    .line 58
    new-array v0, v0, [Lu/aly/bn$e;

    sget-object v1, Lu/aly/bn$e;->bvI:Lu/aly/bn$e;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/bn$e;->bvJ:Lu/aly/bn$e;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/bn$e;->bvK:Lu/aly/bn$e;

    aput-object v1, v0, v7

    sget-object v1, Lu/aly/bn$e;->bvL:Lu/aly/bn$e;

    aput-object v1, v0, v8

    sget-object v1, Lu/aly/bn$e;->bvM:Lu/aly/bn$e;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lu/aly/bn$e;->bvN:Lu/aly/bn$e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lu/aly/bn$e;->bvO:Lu/aly/bn$e;

    aput-object v2, v0, v1

    sput-object v0, Lu/aly/bn$e;->bvQ:[Lu/aly/bn$e;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bn$e;->bvP:Ljava/util/Map;

    const-class v0, Lu/aly/bn$e;

    .line 70
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@17
    nop

    move-result-object v1

    :goto_99
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a0

    .line 73
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 70
    :cond_a0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bn$e;

    .line 71
    sget-object v2, Lu/aly/bn$e;->bvP:Ljava/util/Map;

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@17
    nop

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_99
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .registers 6

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    int-to-short v0, p3

    iput-short v0, p0, Lu/aly/bn$e;->i:S

    .line 121
    iput-object p4, p0, Lu/aly/bn$e;->j:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/bn$e;
    .registers 2

    .prologue
    const-class v0, Lu/aly/bn$e;

    .line 58
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/bn$e;

    return-object v0
.end method

.method public static values()[Lu/aly/bn$e;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lu/aly/bn$e;->bvQ:[Lu/aly/bn$e;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/bn$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .registers 2

    .prologue
    .line 125
    iget-short v0, p0, Lu/aly/bn$e;->i:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lu/aly/bn$e;->j:Ljava/lang/String;

    return-object v0
.end method
