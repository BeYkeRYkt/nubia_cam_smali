.class public final enum Lu/aly/bd$e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lu/aly/aF;


# static fields
.field public static final enum bxL:Lu/aly/bd$e;

.field public static final enum bxM:Lu/aly/bd$e;

.field public static final enum bxN:Lu/aly/bd$e;

.field private static final synthetic bxO:[Lu/aly/bd$e;

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

    .line 51
    new-instance v0, Lu/aly/bd$e;

    const-string/jumbo v1, "VALUE"

    const-string/jumbo v2, "value"

    invoke-direct {v0, v1, v3, v4, v2}, Lu/aly/bd$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bd$e;->bxL:Lu/aly/bd$e;

    .line 52
    new-instance v0, Lu/aly/bd$e;

    const-string/jumbo v1, "TS"

    const-string/jumbo v2, "ts"

    invoke-direct {v0, v1, v4, v5, v2}, Lu/aly/bd$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bd$e;->bxM:Lu/aly/bd$e;

    .line 53
    new-instance v0, Lu/aly/bd$e;

    const-string/jumbo v1, "GUID"

    const-string/jumbo v2, "guid"

    invoke-direct {v0, v1, v5, v6, v2}, Lu/aly/bd$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bd$e;->bxN:Lu/aly/bd$e;

    .line 50
    new-array v0, v6, [Lu/aly/bd$e;

    sget-object v1, Lu/aly/bd$e;->bxL:Lu/aly/bd$e;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/bd$e;->bxM:Lu/aly/bd$e;

    aput-object v1, v0, v4

    sget-object v1, Lu/aly/bd$e;->bxN:Lu/aly/bd$e;

    aput-object v1, v0, v5

    sput-object v0, Lu/aly/bd$e;->bxO:[Lu/aly/bd$e;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bd$e;->d:Ljava/util/Map;

    const-class v0, Lu/aly/bd$e;

    .line 58
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

    .line 61
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 58
    :cond_53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bd$e;

    .line 59
    sget-object v2, Lu/aly/bd$e;->d:Ljava/util/Map;

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
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    int-to-short v0, p3

    iput-short v0, p0, Lu/aly/bd$e;->e:S

    .line 101
    iput-object p4, p0, Lu/aly/bd$e;->f:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/bd$e;
    .registers 2

    .prologue
    const-class v0, Lu/aly/bd$e;

    .line 50
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/bd$e;

    return-object v0
.end method

.method public static values()[Lu/aly/bd$e;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lu/aly/bd$e;->bxO:[Lu/aly/bd$e;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/bd$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .registers 2

    .prologue
    .line 105
    iget-short v0, p0, Lu/aly/bd$e;->e:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lu/aly/bd$e;->f:Ljava/lang/String;

    return-object v0
.end method