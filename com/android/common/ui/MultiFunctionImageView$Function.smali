.class public final enum Lcom/android/common/ui/MultiFunctionImageView$Function;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Am:Lcom/android/common/ui/MultiFunctionImageView$Function;

.field public static final enum An:Lcom/android/common/ui/MultiFunctionImageView$Function;

.field public static final enum Ao:Lcom/android/common/ui/MultiFunctionImageView$Function;

.field public static final enum Ap:Lcom/android/common/ui/MultiFunctionImageView$Function;

.field public static final enum Aq:Lcom/android/common/ui/MultiFunctionImageView$Function;

.field private static final synthetic Ar:[Lcom/android/common/ui/MultiFunctionImageView$Function;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/android/common/ui/MultiFunctionImageView$Function;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/common/ui/MultiFunctionImageView$Function;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Aq:Lcom/android/common/ui/MultiFunctionImageView$Function;

    new-instance v0, Lcom/android/common/ui/MultiFunctionImageView$Function;

    const-string/jumbo v1, "WAIT"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/common/ui/MultiFunctionImageView$Function;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    new-instance v0, Lcom/android/common/ui/MultiFunctionImageView$Function;

    const-string/jumbo v1, "COMPASS"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/common/ui/MultiFunctionImageView$Function;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Ap:Lcom/android/common/ui/MultiFunctionImageView$Function;

    new-instance v0, Lcom/android/common/ui/MultiFunctionImageView$Function;

    const-string/jumbo v1, "GRADIENTER"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/common/ui/MultiFunctionImageView$Function;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Ao:Lcom/android/common/ui/MultiFunctionImageView$Function;

    new-instance v0, Lcom/android/common/ui/MultiFunctionImageView$Function;

    const-string/jumbo v1, "PROGRESS"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/common/ui/MultiFunctionImageView$Function;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Am:Lcom/android/common/ui/MultiFunctionImageView$Function;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/common/ui/MultiFunctionImageView$Function;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->Aq:Lcom/android/common/ui/MultiFunctionImageView$Function;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->Ap:Lcom/android/common/ui/MultiFunctionImageView$Function;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->Ao:Lcom/android/common/ui/MultiFunctionImageView$Function;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->Am:Lcom/android/common/ui/MultiFunctionImageView$Function;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Ar:[Lcom/android/common/ui/MultiFunctionImageView$Function;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/android/common/ui/MultiFunctionImageView$Function;->value:I

    .line 32
    return-void
.end method

.method static ET(I)Lcom/android/common/ui/MultiFunctionImageView$Function;
    .registers 2

    .prologue
    .line 37
    packed-switch p0, :pswitch_data_12

    .line 47
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Aq:Lcom/android/common/ui/MultiFunctionImageView$Function;

    return-object v0

    .line 39
    :pswitch_6
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    return-object v0

    .line 41
    :pswitch_9
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Ap:Lcom/android/common/ui/MultiFunctionImageView$Function;

    return-object v0

    .line 43
    :pswitch_c
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Ao:Lcom/android/common/ui/MultiFunctionImageView$Function;

    return-object v0

    .line 45
    :pswitch_f
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Am:Lcom/android/common/ui/MultiFunctionImageView$Function;

    return-object v0

    .line 37
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/ui/MultiFunctionImageView$Function;
    .registers 2

    .prologue
    .line 29
    const-class v0, Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/MultiFunctionImageView$Function;

    return-object v0
.end method

.method public static values()[Lcom/android/common/ui/MultiFunctionImageView$Function;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Ar:[Lcom/android/common/ui/MultiFunctionImageView$Function;

    return-object v0
.end method
