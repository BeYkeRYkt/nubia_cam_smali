.class public final enum Lu/aly/ax$e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lu/aly/aF;


# static fields
.field public static final enum byJ:Lu/aly/ax$e;

.field public static final enum byK:Lu/aly/ax$e;

.field public static final enum byL:Lu/aly/ax$e;

.field public static final enum byM:Lu/aly/ax$e;

.field public static final enum byN:Lu/aly/ax$e;

.field private static final byO:Ljava/util/Map;

.field private static final synthetic byP:[Lu/aly/ax$e;


# instance fields
.field private final g:S

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 55
    new-instance v0, Lu/aly/ax$e;

    const-string/jumbo v1, "NAME"

    const-string/jumbo v2, "name"

    invoke-direct {v0, v1, v4, v5, v2}, Lu/aly/ax$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ax$e;->byJ:Lu/aly/ax$e;

    .line 56
    new-instance v0, Lu/aly/ax$e;

    const-string/jumbo v1, "PROPERTIES"

    const-string/jumbo v2, "properties"

    invoke-direct {v0, v1, v5, v6, v2}, Lu/aly/ax$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ax$e;->byK:Lu/aly/ax$e;

    .line 57
    new-instance v0, Lu/aly/ax$e;

    const-string/jumbo v1, "DURATION"

    const-string/jumbo v2, "duration"

    invoke-direct {v0, v1, v6, v7, v2}, Lu/aly/ax$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ax$e;->byL:Lu/aly/ax$e;

    .line 58
    new-instance v0, Lu/aly/ax$e;

    const-string/jumbo v1, "ACC"

    const-string/jumbo v2, "acc"

    invoke-direct {v0, v1, v7, v8, v2}, Lu/aly/ax$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ax$e;->byM:Lu/aly/ax$e;

    .line 59
    new-instance v0, Lu/aly/ax$e;

    const-string/jumbo v1, "TS"

    const-string/jumbo v2, "ts"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v8, v3, v2}, Lu/aly/ax$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ax$e;->byN:Lu/aly/ax$e;

    const/4 v0, 0x5

    .line 54
    new-array v0, v0, [Lu/aly/ax$e;

    sget-object v1, Lu/aly/ax$e;->byJ:Lu/aly/ax$e;

    aput-object v1, v0, v4

    sget-object v1, Lu/aly/ax$e;->byK:Lu/aly/ax$e;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/ax$e;->byL:Lu/aly/ax$e;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/ax$e;->byM:Lu/aly/ax$e;

    aput-object v1, v0, v7

    sget-object v1, Lu/aly/ax$e;->byN:Lu/aly/ax$e;

    aput-object v1, v0, v8

    sput-object v0, Lu/aly/ax$e;->byP:[Lu/aly/ax$e;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ax$e;->byO:Ljava/util/Map;

    const-class v0, Lu/aly/ax$e;

    .line 64
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@17
    nop

    move-result-object v1

    :goto_71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_78

    .line 67
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 64
    :cond_78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ax$e;

    .line 65
    sget-object v2, Lu/aly/ax$e;->byO:Ljava/util/Map;

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@17
    nop

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .registers 6

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    int-to-short v0, p3

    iput-short v0, p0, Lu/aly/ax$e;->g:S

    .line 111
    iput-object p4, p0, Lu/aly/ax$e;->h:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/ax$e;
    .registers 2

    .prologue
    const-class v0, Lu/aly/ax$e;

    .line 54
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/ax$e;

    return-object v0
.end method

.method public static values()[Lu/aly/ax$e;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lu/aly/ax$e;->byP:[Lu/aly/ax$e;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/ax$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .registers 2

    .prologue
    .line 115
    iget-short v0, p0, Lu/aly/ax$e;->g:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lu/aly/ax$e;->h:Ljava/lang/String;

    return-object v0
.end method
