.class public final enum Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic Mo:[Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

.field public static final enum Mp:Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

.field public static final enum Mq:Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

.field public static final enum Mr:Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

.field public static final enum Ms:Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-instance v0, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    const-string/jumbo v1, "PREVIEW_EFFECT"

    invoke-direct {v0, v1, v2}, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;->Mq:Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    new-instance v0, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    const-string/jumbo v1, "GRID_EFFECT"

    invoke-direct {v0, v1, v3}, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;->Mp:Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    new-instance v0, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    const-string/jumbo v1, "SHOW_GRID_EFFECT_ANIM"

    invoke-direct {v0, v1, v4}, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;->Ms:Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    new-instance v0, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    const-string/jumbo v1, "SHOW_GIRD_EFFECT_ONE_BY_ONE"

    invoke-direct {v0, v1, v5}, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;->Mr:Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    .line 119
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    sget-object v1, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;->Mq:Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;->Mp:Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;->Ms:Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;->Mr:Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;->Mo:[Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;
    .registers 2

    .prologue
    .line 119
    const-class v0, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    return-object v0
.end method

.method public static values()[Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;
    .registers 1

    .prologue
    .line 119
    sget-object v0, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;->Mo:[Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    return-object v0
.end method
