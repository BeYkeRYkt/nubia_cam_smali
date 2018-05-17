.class public Lcom/android/common/appService/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final iR:[I


# instance fields
.field private iS:Landroid/content/Context;

.field private iT:Lcom/android/common/appService/A;

.field private iU:Landroid/widget/Toast;

.field private iV:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    const v0, 0x7f0a02cb

    const v1, 0x7f0a02ca

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/common/appService/z;->iR:[I

    .line 11
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/appService/z;->iV:I

    .line 22
    new-instance v0, Lcom/android/common/appService/A;

    invoke-direct {v0, p0, v1}, Lcom/android/common/appService/A;-><init>(Lcom/android/common/appService/z;Lcom/android/common/appService/A;)V

    iput-object v0, p0, Lcom/android/common/appService/z;->iT:Lcom/android/common/appService/A;

    .line 23
    iput-object v1, p0, Lcom/android/common/appService/z;->iU:Landroid/widget/Toast;

    .line 38
    iput-object p1, p0, Lcom/android/common/appService/z;->iS:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private lM(Landroid/widget/Toast;)V
    .registers 2

    .prologue
    .line 63
    if-eqz p1, :cond_5

    .line 64
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 62
    :cond_5
    return-void
.end method

.method private lN()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/common/appService/z;->iU:Landroid/widget/Toast;

    invoke-direct {p0, v0}, Lcom/android/common/appService/z;->lM(Landroid/widget/Toast;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/appService/z;->iU:Landroid/widget/Toast;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/appService/z;->iV:I

    .line 60
    iget-object v0, p0, Lcom/android/common/appService/z;->iT:Lcom/android/common/appService/A;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/A;->removeMessages(I)V

    .line 56
    return-void
.end method

.method private lO(Landroid/content/Context;I)Landroid/widget/Toast;
    .registers 4

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/android/common/ui/W;->Dc(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_a

    .line 71
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 73
    :cond_a
    return-object v0
.end method

.method static synthetic lP(Lcom/android/common/appService/z;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/appService/z;->lN()V

    return-void
.end method


# virtual methods
.method public lL(I)Z
    .registers 3

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method
