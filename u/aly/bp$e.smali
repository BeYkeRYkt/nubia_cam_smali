.class public final enum Lu/aly/bp$e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lu/aly/aF;


# static fields
.field public static final enum bBJ:Lu/aly/bp$e;

.field public static final enum bBK:Lu/aly/bp$e;

.field public static final enum bBL:Lu/aly/bp$e;

.field public static final enum bBM:Lu/aly/bp$e;

.field public static final enum bBN:Lu/aly/bp$e;

.field public static final enum bBO:Lu/aly/bp$e;

.field public static final enum bBP:Lu/aly/bp$e;

.field public static final enum bBQ:Lu/aly/bp$e;

.field public static final enum bBR:Lu/aly/bp$e;

.field public static final enum bBS:Lu/aly/bp$e;

.field public static final enum bBT:Lu/aly/bp$e;

.field public static final enum bBU:Lu/aly/bp$e;

.field private static final bBV:Ljava/util/Map;

.field private static final synthetic bBW:[Lu/aly/bp$e;


# instance fields
.field private final n:S

.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 68
    new-instance v0, Lu/aly/bp$e;

    const-string/jumbo v1, "CLIENT_STATS"

    const-string/jumbo v2, "client_stats"

    invoke-direct {v0, v1, v5, v6, v2}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bp$e;->bBJ:Lu/aly/bp$e;

    .line 69
    new-instance v0, Lu/aly/bp$e;

    const-string/jumbo v1, "APP_INFO"

    const-string/jumbo v2, "app_info"

    invoke-direct {v0, v1, v6, v7, v2}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bp$e;->bBK:Lu/aly/bp$e;

    .line 70
    new-instance v0, Lu/aly/bp$e;

    const-string/jumbo v1, "DEVICE_INFO"

    const-string/jumbo v2, "device_info"

    invoke-direct {v0, v1, v7, v8, v2}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bp$e;->bBL:Lu/aly/bp$e;

    .line 71
    new-instance v0, Lu/aly/bp$e;

    const-string/jumbo v1, "MISC_INFO"

    const-string/jumbo v2, "misc_info"

    invoke-direct {v0, v1, v8, v9, v2}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bp$e;->bBM:Lu/aly/bp$e;

    .line 72
    new-instance v0, Lu/aly/bp$e;

    const-string/jumbo v1, "ACTIVATE_MSG"

    const-string/jumbo v2, "activate_msg"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v9, v3, v2}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bp$e;->bBN:Lu/aly/bp$e;

    .line 73
    new-instance v0, Lu/aly/bp$e;

    const-string/jumbo v1, "INSTANT_MSGS"

    const/4 v2, 0x5

    const-string/jumbo v3, "instant_msgs"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bp$e;->bBO:Lu/aly/bp$e;

    .line 74
    new-instance v0, Lu/aly/bp$e;

    const-string/jumbo v1, "SESSIONS"

    const/4 v2, 0x6

    const-string/jumbo v3, "sessions"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bp$e;->bBP:Lu/aly/bp$e;

    .line 75
    new-instance v0, Lu/aly/bp$e;

    const-string/jumbo v1, "IMPRINT"

    const/4 v2, 0x7

    const-string/jumbo v3, "imprint"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bp$e;->bBQ:Lu/aly/bp$e;

    .line 76
    new-instance v0, Lu/aly/bp$e;

    const-string/jumbo v1, "ID_TRACKING"

    const/16 v2, 0x8

    const-string/jumbo v3, "id_tracking"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bp$e;->bBR:Lu/aly/bp$e;

    .line 77
    new-instance v0, Lu/aly/bp$e;

    const-string/jumbo v1, "ACTIVE_USER"

    const/16 v2, 0x9

    const-string/jumbo v3, "active_user"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bp$e;->bBS:Lu/aly/bp$e;

    .line 78
    new-instance v0, Lu/aly/bp$e;

    const-string/jumbo v1, "CONTROL_POLICY"

    const/16 v2, 0xa

    const-string/jumbo v3, "control_policy"

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bp$e;->bBT:Lu/aly/bp$e;

    .line 79
    new-instance v0, Lu/aly/bp$e;

    const-string/jumbo v1, "GROUP_INFO"

    const/16 v2, 0xb

    const-string/jumbo v3, "group_info"

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v4, v3}, Lu/aly/bp$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bp$e;->bBU:Lu/aly/bp$e;

    const/16 v0, 0xc

    .line 67
    new-array v0, v0, [Lu/aly/bp$e;

    sget-object v1, Lu/aly/bp$e;->bBJ:Lu/aly/bp$e;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/bp$e;->bBK:Lu/aly/bp$e;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/bp$e;->bBL:Lu/aly/bp$e;

    aput-object v1, v0, v7

    sget-object v1, Lu/aly/bp$e;->bBM:Lu/aly/bp$e;

    aput-object v1, v0, v8

    sget-object v1, Lu/aly/bp$e;->bBN:Lu/aly/bp$e;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lu/aly/bp$e;->bBO:Lu/aly/bp$e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lu/aly/bp$e;->bBP:Lu/aly/bp$e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lu/aly/bp$e;->bBQ:Lu/aly/bp$e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lu/aly/bp$e;->bBR:Lu/aly/bp$e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lu/aly/bp$e;->bBS:Lu/aly/bp$e;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lu/aly/bp$e;->bBT:Lu/aly/bp$e;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lu/aly/bp$e;->bBU:Lu/aly/bp$e;

    aput-object v2, v0, v1

    sput-object v0, Lu/aly/bp$e;->bBW:[Lu/aly/bp$e;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bp$e;->bBV:Ljava/util/Map;

    const-class v0, Lu/aly/bp$e;

    .line 84
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@17
    nop

    move-result-object v1

    :goto_10b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_112

    .line 87
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 84
    :cond_112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bp$e;

    .line 85
    sget-object v2, Lu/aly/bp$e;->bBV:Ljava/util/Map;

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@17
    nop

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10b
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .registers 6

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 144
    int-to-short v0, p3

    iput-short v0, p0, Lu/aly/bp$e;->n:S

    .line 145
    iput-object p4, p0, Lu/aly/bp$e;->o:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/bp$e;
    .registers 2

    .prologue
    const-class v0, Lu/aly/bp$e;

    .line 67
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/bp$e;

    return-object v0
.end method

.method public static values()[Lu/aly/bp$e;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lu/aly/bp$e;->bBW:[Lu/aly/bp$e;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/bp$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .registers 2

    .prologue
    .line 149
    iget-short v0, p0, Lu/aly/bp$e;->n:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lu/aly/bp$e;->o:Ljava/lang/String;

    return-object v0
.end method
