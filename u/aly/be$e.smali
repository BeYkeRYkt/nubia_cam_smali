.class public final enum Lu/aly/be$e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lu/aly/aF;


# static fields
.field public static final enum bAY:Lu/aly/be$e;

.field public static final enum bAZ:Lu/aly/be$e;

.field public static final enum bBa:Lu/aly/be$e;

.field public static final enum bBb:Lu/aly/be$e;

.field private static final bBc:Ljava/util/Map;

.field private static final synthetic bBd:[Lu/aly/be$e;


# instance fields
.field private final f:S

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lu/aly/be$e;

    const-string/jumbo v1, "ID"

    const-string/jumbo v2, "id"

    invoke-direct {v0, v1, v3, v4, v2}, Lu/aly/be$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/be$e;->bAY:Lu/aly/be$e;

    .line 54
    new-instance v0, Lu/aly/be$e;

    const-string/jumbo v1, "ERRORS"

    const-string/jumbo v2, "errors"

    invoke-direct {v0, v1, v4, v5, v2}, Lu/aly/be$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/be$e;->bAZ:Lu/aly/be$e;

    .line 55
    new-instance v0, Lu/aly/be$e;

    const-string/jumbo v1, "EVENTS"

    const-string/jumbo v2, "events"

    invoke-direct {v0, v1, v5, v6, v2}, Lu/aly/be$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/be$e;->bBa:Lu/aly/be$e;

    .line 56
    new-instance v0, Lu/aly/be$e;

    const-string/jumbo v1, "GAME_EVENTS"

    const-string/jumbo v2, "game_events"

    invoke-direct {v0, v1, v6, v7, v2}, Lu/aly/be$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/be$e;->bBb:Lu/aly/be$e;

    .line 52
    new-array v0, v7, [Lu/aly/be$e;

    sget-object v1, Lu/aly/be$e;->bAY:Lu/aly/be$e;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/be$e;->bAZ:Lu/aly/be$e;

    aput-object v1, v0, v4

    sget-object v1, Lu/aly/be$e;->bBa:Lu/aly/be$e;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/be$e;->bBb:Lu/aly/be$e;

    aput-object v1, v0, v6

    sput-object v0, Lu/aly/be$e;->bBd:[Lu/aly/be$e;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/be$e;->bBc:Ljava/util/Map;

    const-class v0, Lu/aly/be$e;

    .line 61
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@17
    nop

    move-result-object v1

    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_65

    .line 64
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 61
    :cond_65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/be$e;

    .line 62
    sget-object v2, Lu/aly/be$e;->bBc:Ljava/util/Map;

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@17
    nop

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .registers 6

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    int-to-short v0, p3

    iput-short v0, p0, Lu/aly/be$e;->f:S

    .line 106
    iput-object p4, p0, Lu/aly/be$e;->g:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/be$e;
    .registers 2

    .prologue
    const-class v0, Lu/aly/be$e;

    .line 52
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/be$e;

    return-object v0
.end method

.method public static values()[Lu/aly/be$e;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lu/aly/be$e;->bBd:[Lu/aly/be$e;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/be$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .registers 2

    .prologue
    .line 110
    iget-short v0, p0, Lu/aly/be$e;->f:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lu/aly/be$e;->g:Ljava/lang/String;

    return-object v0
.end method
