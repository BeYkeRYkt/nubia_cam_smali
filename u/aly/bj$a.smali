.class public final enum Lu/aly/bj$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lu/aly/aF;


# static fields
.field public static final enum btr:Lu/aly/bj$a;

.field public static final enum bts:Lu/aly/bj$a;

.field private static final btt:Ljava/util/Map;

.field private static final synthetic btu:[Lu/aly/bj$a;


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

    .line 39
    new-instance v0, Lu/aly/bj$a;

    const-string/jumbo v1, "STRING_VALUE"

    const-string/jumbo v2, "string_value"

    invoke-direct {v0, v1, v3, v4, v2}, Lu/aly/bj$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bj$a;->btr:Lu/aly/bj$a;

    .line 40
    new-instance v0, Lu/aly/bj$a;

    const-string/jumbo v1, "LONG_VALUE"

    const-string/jumbo v2, "long_value"

    invoke-direct {v0, v1, v4, v5, v2}, Lu/aly/bj$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bj$a;->bts:Lu/aly/bj$a;

    .line 38
    new-array v0, v5, [Lu/aly/bj$a;

    sget-object v1, Lu/aly/bj$a;->btr:Lu/aly/bj$a;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/bj$a;->bts:Lu/aly/bj$a;

    aput-object v1, v0, v4

    sput-object v0, Lu/aly/bj$a;->btu:[Lu/aly/bj$a;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bj$a;->btt:Ljava/util/Map;

    const-class v0, Lu/aly/bj$a;

    .line 45
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

    .line 48
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 45
    :cond_41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bj$a;

    .line 46
    sget-object v2, Lu/aly/bj$a;->btt:Ljava/util/Map;

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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    int-to-short v0, p3

    iput-short v0, p0, Lu/aly/bj$a;->d:S

    .line 86
    iput-object p4, p0, Lu/aly/bj$a;->e:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public static a(I)Lu/aly/bj$a;
    .registers 2

    .prologue
    .line 54
    packed-switch p0, :pswitch_data_c

    const/4 v0, 0x0

    .line 60
    return-object v0

    .line 56
    :pswitch_5
    sget-object v0, Lu/aly/bj$a;->btr:Lu/aly/bj$a;

    return-object v0

    .line 58
    :pswitch_8
    sget-object v0, Lu/aly/bj$a;->bts:Lu/aly/bj$a;

    return-object v0

    .line 54
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static bQI(I)Lu/aly/bj$a;
    .registers 4

    .prologue
    .line 69
    invoke-static {p0}, Lu/aly/bj$a;->a(I)Lu/aly/bj$a;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_7

    .line 71
    return-object v0

    .line 70
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " doesn\'t exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/bj$a;
    .registers 2

    .prologue
    const-class v0, Lu/aly/bj$a;

    .line 38
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/bj$a;

    return-object v0
.end method

.method public static values()[Lu/aly/bj$a;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lu/aly/bj$a;->btu:[Lu/aly/bj$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/bj$a;

    return-object v0
.end method


# virtual methods
.method public a()S
    .registers 2

    .prologue
    .line 90
    iget-short v0, p0, Lu/aly/bj$a;->d:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lu/aly/bj$a;->e:Ljava/lang/String;

    return-object v0
.end method
