.class final Lcom/android/common/o/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic aeR:Lcom/android/common/o/p;


# direct methods
.method constructor <init>(Lcom/android/common/o/p;)V
    .registers 2

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/common/o/P;->aeR:Lcom/android/common/o/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    .line 320
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_56

    .line 332
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 322
    :pswitch_9
    iget-object v0, p0, Lcom/android/common/o/P;->aeR:Lcom/android/common/o/p;

    invoke-static {v0}, Lcom/android/common/o/p;->amk(Lcom/android/common/o/p;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/o/P;->aeR:Lcom/android/common/o/p;

    invoke-virtual {v1}, Lcom/android/common/o/p;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    iget-object v0, p0, Lcom/android/common/o/P;->aeR:Lcom/android/common/o/p;

    invoke-static {v0}, Lcom/android/common/o/p;->amj(Lcom/android/common/o/p;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_7

    .line 326
    :pswitch_30
    iget-object v0, p0, Lcom/android/common/o/P;->aeR:Lcom/android/common/o/p;

    invoke-static {v0}, Lcom/android/common/o/p;->amk(Lcom/android/common/o/p;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/o/P;->aeR:Lcom/android/common/o/p;

    invoke-virtual {v1}, Lcom/android/common/o/p;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    iget-object v0, p0, Lcom/android/common/o/P;->aeR:Lcom/android/common/o/p;

    invoke-static {v0}, Lcom/android/common/o/p;->amj(Lcom/android/common/o/p;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_7

    .line 320
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_9
        :pswitch_30
    .end packed-switch
.end method
