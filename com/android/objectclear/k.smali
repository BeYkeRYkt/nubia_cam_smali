.class Lcom/android/objectclear/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aUO:Lcom/android/objectclear/i;


# direct methods
.method private constructor <init>(Lcom/android/objectclear/i;)V
    .registers 2

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/objectclear/k;->aUO:Lcom/android/objectclear/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/objectclear/i;Lcom/android/objectclear/k;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/objectclear/k;-><init>(Lcom/android/objectclear/i;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 397
    const-string/jumbo v0, "NubiaObjectClearFragment"

    const-string/jumbo v1, "CancelButtonClickListener"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/android/objectclear/k;->aUO:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->blY(Lcom/android/objectclear/i;)Lcom/android/common/ui/ZtemtShutterButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 399
    const-string/jumbo v0, "NubiaObjectClearFragment"

    const-string/jumbo v1, "ignore click because view is not visible"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void

    .line 402
    :cond_1f
    iget-object v0, p0, Lcom/android/objectclear/k;->aUO:Lcom/android/objectclear/i;

    invoke-virtual {v0}, Lcom/android/objectclear/i;->blF()V

    .line 396
    return-void
.end method
