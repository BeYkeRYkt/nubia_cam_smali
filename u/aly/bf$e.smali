.class public final enum Lu/aly/bf$e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lu/aly/aF;


# static fields
.field public static final enum bwT:Lu/aly/bf$e;

.field public static final enum bwU:Lu/aly/bf$e;

.field private static final bwV:Ljava/util/Map;

.field private static final synthetic bwW:[Lu/aly/bf$e;


# instance fields
.field private final d:S

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lu/aly/bf$e;

    const-string/jumbo v1, "LATENCY"

    const-string/jumbo v2, "latency"

    invoke-direct {v0, v1, v3, v4, v2}, Lu/aly/bf$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bf$e;->bwT:Lu/aly/bf$e;

    .line 49
    new-instance v0, Lu/aly/bf$e;

    const-string/jumbo v1, "INTERVAL"

    const-string/jumbo v2, "interval"

    invoke-direct {v0, v1, v4, v5, v2}, Lu/aly/bf$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bf$e;->bwU:Lu/aly/bf$e;

    .line 47
    new-array v0, v5, [Lu/aly/bf$e;

    sget-object v1, Lu/aly/bf$e;->bwT:Lu/aly/bf$e;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/bf$e;->bwU:Lu/aly/bf$e;

    aput-object v1, v0, v4

    sput-object v0, Lu/aly/bf$e;->bwW:[Lu/aly/bf$e;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bf$e;->bwV:Ljava/util/Map;

    const-class v0, Lu/aly/bf$e;

    .line 54
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@17
    nop

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_41

    .line 57
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 54
    :cond_41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bf$e;

    .line 55
    sget-object v2, Lu/aly/bf$e;->bwV:Ljava/util/Map;

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@17
    nop

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .registers 6

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    int-to-short v0, p3

    iput-short v0, p0, Lu/aly/bf$e;->d:S

    .line 95
    iput-object p4, p0, Lu/aly/bf$e;->e:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/bf$e;
    .registers 2

    .prologue
    const-class v0, Lu/aly/bf$e;

    .line 47
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/bf$e;

    return-object v0
.end method

.method public static values()[Lu/aly/bf$e;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lu/aly/bf$e;->bwW:[Lu/aly/bf$e;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/bf$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .registers 2

    .prologue
    .line 99
    iget-short v0, p0, Lu/aly/bf$e;->d:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lu/aly/bf$e;->e:Ljava/lang/String;

    return-object v0
.end method
