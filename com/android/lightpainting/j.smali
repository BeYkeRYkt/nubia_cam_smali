.class Lcom/android/lightpainting/j;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field final synthetic auu:Lcom/android/lightpainting/e;


# direct methods
.method public constructor <init>(Lcom/android/lightpainting/e;J)V
    .registers 6

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/android/lightpainting/j;->auu:Lcom/android/lightpainting/e;

    .line 1123
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 1122
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/lightpainting/j;->auu:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aHm(Lcom/android/lightpainting/e;)V

    .line 1128
    iget-object v0, p0, Lcom/android/lightpainting/j;->auu:Lcom/android/lightpainting/e;

    const-string/jumbo v1, "torch"

    invoke-static {v0, v1}, Lcom/android/lightpainting/e;->aHj(Lcom/android/lightpainting/e;Ljava/lang/String;)V

    .line 1129
    iget-object v0, p0, Lcom/android/lightpainting/j;->auu:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGO(Lcom/android/lightpainting/e;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1130
    iget-object v0, p0, Lcom/android/lightpainting/j;->auu:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGN(Lcom/android/lightpainting/e;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1131
    iget-object v0, p0, Lcom/android/lightpainting/j;->auu:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGM(Lcom/android/lightpainting/e;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1126
    return-void
.end method

.method public onTick(J)V
    .registers 8

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/lightpainting/j;->auu:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGO(Lcom/android/lightpainting/e;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1135
    return-void
.end method
