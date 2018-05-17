.class final Lcom/android/common/h/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic YC:Lcom/android/common/h/h;

.field final synthetic YD:I


# direct methods
.method constructor <init>(Lcom/android/common/h/h;I)V
    .registers 3

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/common/h/p;->YC:Lcom/android/common/h/h;

    iput p2, p0, Lcom/android/common/h/p;->YD:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 53
    iget v0, p0, Lcom/android/common/h/p;->YD:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b9

    .line 54
    iget-object v0, p0, Lcom/android/common/h/p;->YC:Lcom/android/common/h/h;

    invoke-static {v0}, Lcom/android/common/h/h;->abU(Lcom/android/common/h/h;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_97

    .line 55
    iget-object v0, p0, Lcom/android/common/h/p;->YC:Lcom/android/common/h/h;

    new-instance v1, Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/common/h/p;->YC:Lcom/android/common/h/h;

    invoke-static {v2}, Lcom/android/common/h/h;->abS(Lcom/android/common/h/h;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/common/h/h;->abW(Lcom/android/common/h/h;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 56
    iget-object v0, p0, Lcom/android/common/h/p;->YC:Lcom/android/common/h/h;

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/common/h/p;->YC:Lcom/android/common/h/h;

    invoke-static {v2}, Lcom/android/common/h/h;->abS(Lcom/android/common/h/h;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/common/h/h;->abV(Lcom/android/common/h/h;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/android/common/h/p;->YC:Lcom/android/common/h/h;

    invoke-static {v0}, Lcom/android/common/h/h;->abT(Lcom/android/common/h/h;)Landroid/widget/TextView;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/android/common/h/p;->YC:Lcom/android/common/h/h;

    invoke-static {v1}, Lcom/android/common/h/h;->abS(Lcom/android/common/h/h;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    .line 57
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 59
    iget-object v0, p0, Lcom/android/common/h/p;->YC:Lcom/android/common/h/h;

    invoke-static {v0}, Lcom/android/common/h/h;->abT(Lcom/android/common/h/h;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/h/p;->YC:Lcom/android/common/h/h;

    invoke-static {v1}, Lcom/android/common/h/h;->abS(Lcom/android/common/h/h;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v0, p0, Lcom/android/common/h/p;->YC:Lcom/android/common/h/h;

    invoke-static {v0}, Lcom/android/common/h/h;->abT(Lcom/android/common/h/h;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0202fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 61
    iget-object v0, p0, Lcom/android/common/h/p;->YC:Lcom/android/common/h/h;

    invoke-static {v0}, Lcom/android/common/h/h;->abT(Lcom/android/common/h/h;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a0450

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    iget-object v0, p0, Lcom/android/common/h/p;->YC:Lcom/android/common/h/h;

    invoke-static {v0}, Lcom/android/common/h/h;->abU(Lcom/android/common/h/h;)Landroid/widget/Toast;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/android/common/h/p;->YC:Lcom/android/common/h/h;

    invoke-static {v1}, Lcom/android/common/h/h;->abS(Lcom/android/common/h/h;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 62
    const/16 v2, 0x11

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 67
    :cond_97
    iget-object v0, p0, Lcom/android/common/h/p;->YC:Lcom/android/common/h/h;

    invoke-static {v0}, Lcom/android/common/h/h;->abU(Lcom/android/common/h/h;)Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/h/p;->YC:Lcom/android/common/h/h;

    invoke-static {v1}, Lcom/android/common/h/h;->abT(Lcom/android/common/h/h;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/android/common/h/p;->YC:Lcom/android/common/h/h;

    invoke-static {v0}, Lcom/android/common/h/h;->abU(Lcom/android/common/h/h;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 69
    iget-object v0, p0, Lcom/android/common/h/p;->YC:Lcom/android/common/h/h;

    invoke-static {v0}, Lcom/android/common/h/h;->abU(Lcom/android/common/h/h;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 52
    :cond_b8
    :goto_b8
    return-void

    .line 71
    :cond_b9
    iget-object v0, p0, Lcom/android/common/h/p;->YC:Lcom/android/common/h/h;

    invoke-static {v0}, Lcom/android/common/h/h;->abU(Lcom/android/common/h/h;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_b8

    .line 72
    iget-object v0, p0, Lcom/android/common/h/p;->YC:Lcom/android/common/h/h;

    invoke-static {v0}, Lcom/android/common/h/h;->abU(Lcom/android/common/h/h;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    goto :goto_b8
.end method
