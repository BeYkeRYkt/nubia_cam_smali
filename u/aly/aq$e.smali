.class public final enum Lu/aly/aq$e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lu/aly/aF;


# static fields
.field public static final enum bBf:Lu/aly/aq$e;

.field public static final enum bBg:Lu/aly/aq$e;

.field public static final enum bBh:Lu/aly/aq$e;

.field public static final enum bBi:Lu/aly/aq$e;

.field public static final enum bBj:Lu/aly/aq$e;

.field public static final enum bBk:Lu/aly/aq$e;

.field public static final enum bBl:Lu/aly/aq$e;

.field public static final enum bBm:Lu/aly/aq$e;

.field public static final enum bBn:Lu/aly/aq$e;

.field public static final enum bBo:Lu/aly/aq$e;

.field private static final bBp:Ljava/util/Map;

.field private static final synthetic bBq:[Lu/aly/aq$e;


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

    .line 69
    new-instance v0, Lu/aly/aq$e;

    const-string/jumbo v1, "KEY"

    const-string/jumbo v2, "key"

    invoke-direct {v0, v1, v5, v6, v2}, Lu/aly/aq$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/aq$e;->bBf:Lu/aly/aq$e;

    .line 70
    new-instance v0, Lu/aly/aq$e;

    const-string/jumbo v1, "VERSION"

    const-string/jumbo v2, "version"

    invoke-direct {v0, v1, v6, v7, v2}, Lu/aly/aq$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/aq$e;->bBg:Lu/aly/aq$e;

    .line 71
    new-instance v0, Lu/aly/aq$e;

    const-string/jumbo v1, "VERSION_INDEX"

    const-string/jumbo v2, "version_index"

    invoke-direct {v0, v1, v7, v8, v2}, Lu/aly/aq$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/aq$e;->bBh:Lu/aly/aq$e;

    .line 72
    new-instance v0, Lu/aly/aq$e;

    const-string/jumbo v1, "PACKAGE_NAME"

    const-string/jumbo v2, "package_name"

    invoke-direct {v0, v1, v8, v9, v2}, Lu/aly/aq$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/aq$e;->bBi:Lu/aly/aq$e;

    .line 77
    new-instance v0, Lu/aly/aq$e;

    const-string/jumbo v1, "SDK_TYPE"

    const-string/jumbo v2, "sdk_type"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v9, v3, v2}, Lu/aly/aq$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/aq$e;->bBj:Lu/aly/aq$e;

    .line 78
    new-instance v0, Lu/aly/aq$e;

    const-string/jumbo v1, "SDK_VERSION"

    const/4 v2, 0x5

    const-string/jumbo v3, "sdk_version"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/aq$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/aq$e;->bBk:Lu/aly/aq$e;

    .line 79
    new-instance v0, Lu/aly/aq$e;

    const-string/jumbo v1, "CHANNEL"

    const/4 v2, 0x6

    const-string/jumbo v3, "channel"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/aq$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/aq$e;->bBl:Lu/aly/aq$e;

    .line 80
    new-instance v0, Lu/aly/aq$e;

    const-string/jumbo v1, "WRAPPER_TYPE"

    const/4 v2, 0x7

    const-string/jumbo v3, "wrapper_type"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/aq$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/aq$e;->bBm:Lu/aly/aq$e;

    .line 81
    new-instance v0, Lu/aly/aq$e;

    const-string/jumbo v1, "WRAPPER_VERSION"

    const/16 v2, 0x8

    const-string/jumbo v3, "wrapper_version"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/aq$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/aq$e;->bBn:Lu/aly/aq$e;

    .line 82
    new-instance v0, Lu/aly/aq$e;

    const-string/jumbo v1, "VERTICAL_TYPE"

    const/16 v2, 0x9

    const-string/jumbo v3, "vertical_type"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/aq$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/aq$e;->bBo:Lu/aly/aq$e;

    const/16 v0, 0xa

    .line 68
    new-array v0, v0, [Lu/aly/aq$e;

    sget-object v1, Lu/aly/aq$e;->bBf:Lu/aly/aq$e;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/aq$e;->bBg:Lu/aly/aq$e;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/aq$e;->bBh:Lu/aly/aq$e;

    aput-object v1, v0, v7

    sget-object v1, Lu/aly/aq$e;->bBi:Lu/aly/aq$e;

    aput-object v1, v0, v8

    sget-object v1, Lu/aly/aq$e;->bBj:Lu/aly/aq$e;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lu/aly/aq$e;->bBk:Lu/aly/aq$e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lu/aly/aq$e;->bBl:Lu/aly/aq$e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lu/aly/aq$e;->bBm:Lu/aly/aq$e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lu/aly/aq$e;->bBn:Lu/aly/aq$e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lu/aly/aq$e;->bBo:Lu/aly/aq$e;

    aput-object v2, v0, v1

    sput-object v0, Lu/aly/aq$e;->bBq:[Lu/aly/aq$e;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/aq$e;->bBp:Ljava/util/Map;

    const-class v0, Lu/aly/aq$e;

    .line 87
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

    .line 90
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 87
    :cond_e4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/aq$e;

    .line 88
    sget-object v2, Lu/aly/aq$e;->bBp:Ljava/util/Map;

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
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 143
    int-to-short v0, p3

    iput-short v0, p0, Lu/aly/aq$e;->l:S

    .line 144
    iput-object p4, p0, Lu/aly/aq$e;->m:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/aq$e;
    .registers 2

    .prologue
    const-class v0, Lu/aly/aq$e;

    .line 68
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/aq$e;

    return-object v0
.end method

.method public static values()[Lu/aly/aq$e;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lu/aly/aq$e;->bBq:[Lu/aly/aq$e;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/aq$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .registers 2

    .prologue
    .line 148
    iget-short v0, p0, Lu/aly/aq$e;->l:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lu/aly/aq$e;->m:Ljava/lang/String;

    return-object v0
.end method
