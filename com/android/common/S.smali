.class final Lcom/android/common/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/storagemanager/h;


# instance fields
.field final synthetic akK:Lcom/android/common/Q;

.field final synthetic akL:Z


# direct methods
.method constructor <init>(Lcom/android/common/Q;Z)V
    .registers 3

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/common/S;->akK:Lcom/android/common/Q;

    iput-boolean p2, p0, Lcom/android/common/S;->akL:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public agP(JZ)V
    .registers 7

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/android/common/S;->akL:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/common/f;->aox()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 346
    :cond_a
    :goto_a
    return-void

    .line 348
    :cond_b
    iget-object v0, p0, Lcom/android/common/S;->akK:Lcom/android/common/Q;

    iget-object v0, v0, Lcom/android/common/Q;->akI:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/android/common/S;->akK:Lcom/android/common/Q;

    iget-object v1, v1, Lcom/android/common/Q;->akI:Lcom/android/common/ActivityBase;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_a
.end method
