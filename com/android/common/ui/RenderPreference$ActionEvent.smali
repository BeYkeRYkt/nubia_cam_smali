.class public final enum Lcom/android/common/ui/RenderPreference$ActionEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic pr:[Lcom/android/common/ui/RenderPreference$ActionEvent;

.field public static final enum ps:Lcom/android/common/ui/RenderPreference$ActionEvent;

.field public static final enum pt:Lcom/android/common/ui/RenderPreference$ActionEvent;

.field public static final enum pu:Lcom/android/common/ui/RenderPreference$ActionEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    new-instance v0, Lcom/android/common/ui/RenderPreference$ActionEvent;

    const-string/jumbo v1, "MOVE"

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/RenderPreference$ActionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/ui/RenderPreference$ActionEvent;->pt:Lcom/android/common/ui/RenderPreference$ActionEvent;

    new-instance v0, Lcom/android/common/ui/RenderPreference$ActionEvent;

    const-string/jumbo v1, "UP"

    invoke-direct {v0, v1, v3}, Lcom/android/common/ui/RenderPreference$ActionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/ui/RenderPreference$ActionEvent;->pu:Lcom/android/common/ui/RenderPreference$ActionEvent;

    new-instance v0, Lcom/android/common/ui/RenderPreference$ActionEvent;

    const-string/jumbo v1, "DOWN"

    invoke-direct {v0, v1, v4}, Lcom/android/common/ui/RenderPreference$ActionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/ui/RenderPreference$ActionEvent;->ps:Lcom/android/common/ui/RenderPreference$ActionEvent;

    .line 107
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/ui/RenderPreference$ActionEvent;

    sget-object v1, Lcom/android/common/ui/RenderPreference$ActionEvent;->pt:Lcom/android/common/ui/RenderPreference$ActionEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/ui/RenderPreference$ActionEvent;->pu:Lcom/android/common/ui/RenderPreference$ActionEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/common/ui/RenderPreference$ActionEvent;->ps:Lcom/android/common/ui/RenderPreference$ActionEvent;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/common/ui/RenderPreference$ActionEvent;->pr:[Lcom/android/common/ui/RenderPreference$ActionEvent;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/ui/RenderPreference$ActionEvent;
    .registers 2

    .prologue
    .line 107
    const-class v0, Lcom/android/common/ui/RenderPreference$ActionEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RenderPreference$ActionEvent;

    return-object v0
.end method

.method public static values()[Lcom/android/common/ui/RenderPreference$ActionEvent;
    .registers 1

    .prologue
    .line 107
    sget-object v0, Lcom/android/common/ui/RenderPreference$ActionEvent;->pr:[Lcom/android/common/ui/RenderPreference$ActionEvent;

    return-object v0
.end method
