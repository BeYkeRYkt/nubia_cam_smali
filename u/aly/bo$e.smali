.class public final enum Lu/aly/bo$e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lu/aly/aF;


# static fields
.field public static final enum byW:Lu/aly/bo$e;

.field public static final enum byX:Lu/aly/bo$e;

.field private static final byY:Ljava/util/Map;

.field private static final synthetic byZ:[Lu/aly/bo$e;


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

    .line 49
    new-instance v0, Lu/aly/bo$e;

    const-string/jumbo v1, "UPLOAD_TRAFFIC"

    const-string/jumbo v2, "upload_traffic"

    invoke-direct {v0, v1, v3, v4, v2}, Lu/aly/bo$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bo$e;->byW:Lu/aly/bo$e;

    .line 50
    new-instance v0, Lu/aly/bo$e;

    const-string/jumbo v1, "DOWNLOAD_TRAFFIC"

    const-string/jumbo v2, "download_traffic"

    invoke-direct {v0, v1, v4, v5, v2}, Lu/aly/bo$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bo$e;->byX:Lu/aly/bo$e;

    .line 48
    new-array v0, v5, [Lu/aly/bo$e;

    sget-object v1, Lu/aly/bo$e;->byW:Lu/aly/bo$e;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/bo$e;->byX:Lu/aly/bo$e;

    aput-object v1, v0, v4

    sput-object v0, Lu/aly/bo$e;->byZ:[Lu/aly/bo$e;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bo$e;->byY:Ljava/util/Map;

    const-class v0, Lu/aly/bo$e;

    .line 55
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

    .line 58
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 55
    :cond_41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bo$e;

    .line 56
    sget-object v2, Lu/aly/bo$e;->byY:Ljava/util/Map;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    int-to-short v0, p3

    iput-short v0, p0, Lu/aly/bo$e;->d:S

    .line 96
    iput-object p4, p0, Lu/aly/bo$e;->e:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/bo$e;
    .registers 2

    .prologue
    const-class v0, Lu/aly/bo$e;

    .line 48
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/bo$e;

    return-object v0
.end method

.method public static values()[Lu/aly/bo$e;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lu/aly/bo$e;->byZ:[Lu/aly/bo$e;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/bo$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .registers 2

    .prologue
    .line 100
    iget-short v0, p0, Lu/aly/bo$e;->d:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lu/aly/bo$e;->e:Ljava/lang/String;

    return-object v0
.end method
