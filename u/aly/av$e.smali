.class public final enum Lu/aly/av$e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lu/aly/aF;


# static fields
.field public static final enum bAA:Lu/aly/av$e;

.field public static final enum bAB:Lu/aly/av$e;

.field private static final synthetic bAC:[Lu/aly/av$e;

.field public static final enum bAz:Lu/aly/av$e;

.field private static final d:Ljava/util/Map;


# instance fields
.field private final e:S

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    new-instance v0, Lu/aly/av$e;

    const-string/jumbo v1, "TS"

    const-string/jumbo v2, "ts"

    invoke-direct {v0, v1, v3, v4, v2}, Lu/aly/av$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/av$e;->bAz:Lu/aly/av$e;

    .line 56
    new-instance v0, Lu/aly/av$e;

    const-string/jumbo v1, "CONTEXT"

    const-string/jumbo v2, "context"

    invoke-direct {v0, v1, v4, v5, v2}, Lu/aly/av$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/av$e;->bAA:Lu/aly/av$e;

    .line 61
    new-instance v0, Lu/aly/av$e;

    const-string/jumbo v1, "SOURCE"

    const-string/jumbo v2, "source"

    invoke-direct {v0, v1, v5, v6, v2}, Lu/aly/av$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/av$e;->bAB:Lu/aly/av$e;

    .line 54
    new-array v0, v6, [Lu/aly/av$e;

    sget-object v1, Lu/aly/av$e;->bAz:Lu/aly/av$e;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/av$e;->bAA:Lu/aly/av$e;

    aput-object v1, v0, v4

    sget-object v1, Lu/aly/av$e;->bAB:Lu/aly/av$e;

    aput-object v1, v0, v5

    sput-object v0, Lu/aly/av$e;->bAC:[Lu/aly/av$e;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/av$e;->d:Ljava/util/Map;

    const-class v0, Lu/aly/av$e;

    .line 66
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@17
    nop

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_53

    .line 69
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 66
    :cond_53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/av$e;

    .line 67
    sget-object v2, Lu/aly/av$e;->d:Ljava/util/Map;

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@17
    nop

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .registers 6

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    int-to-short v0, p3

    iput-short v0, p0, Lu/aly/av$e;->e:S

    .line 109
    iput-object p4, p0, Lu/aly/av$e;->f:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/av$e;
    .registers 2

    .prologue
    const-class v0, Lu/aly/av$e;

    .line 54
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/av$e;

    return-object v0
.end method

.method public static values()[Lu/aly/av$e;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lu/aly/av$e;->bAC:[Lu/aly/av$e;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/av$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .registers 2

    .prologue
    .line 113
    iget-short v0, p0, Lu/aly/av$e;->e:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lu/aly/av$e;->f:Ljava/lang/String;

    return-object v0
.end method
