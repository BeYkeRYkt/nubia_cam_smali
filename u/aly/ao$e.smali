.class public final enum Lu/aly/ao$e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lu/aly/aF;


# static fields
.field private static final b:Ljava/util/Map;

.field public static final enum buQ:Lu/aly/ao$e;

.field private static final synthetic buR:[Lu/aly/ao$e;


# instance fields
.field private final c:S

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lu/aly/ao$e;

    const-string/jumbo v1, "TS"

    const-string/jumbo v2, "ts"

    invoke-direct {v0, v1, v3, v4, v2}, Lu/aly/ao$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ao$e;->buQ:Lu/aly/ao$e;

    .line 46
    new-array v0, v4, [Lu/aly/ao$e;

    sget-object v1, Lu/aly/ao$e;->buQ:Lu/aly/ao$e;

    aput-object v1, v0, v3

    sput-object v0, Lu/aly/ao$e;->buR:[Lu/aly/ao$e;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ao$e;->b:Ljava/util/Map;

    const-class v0, Lu/aly/ao$e;

    .line 52
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@17
    nop

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 55
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 52
    :cond_2f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ao$e;

    .line 53
    sget-object v2, Lu/aly/ao$e;->b:Ljava/util/Map;

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@17
    nop

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .registers 6

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    int-to-short v0, p3

    iput-short v0, p0, Lu/aly/ao$e;->c:S

    .line 91
    iput-object p4, p0, Lu/aly/ao$e;->d:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/ao$e;
    .registers 2

    .prologue
    const-class v0, Lu/aly/ao$e;

    .line 46
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/ao$e;

    return-object v0
.end method

.method public static values()[Lu/aly/ao$e;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lu/aly/ao$e;->buR:[Lu/aly/ao$e;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/ao$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .registers 2

    .prologue
    .line 95
    iget-short v0, p0, Lu/aly/ao$e;->c:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lu/aly/ao$e;->d:Ljava/lang/String;

    return-object v0
.end method
