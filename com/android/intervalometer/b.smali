.class Lcom/android/intervalometer/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/intervalometer/g;


# instance fields
.field final synthetic aPY:Lcom/android/intervalometer/a;


# direct methods
.method private constructor <init>(Lcom/android/intervalometer/a;)V
    .registers 2

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/intervalometer/a;Lcom/android/intervalometer/b;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/intervalometer/b;-><init>(Lcom/android/intervalometer/a;)V

    return-void
.end method


# virtual methods
.method public bgA()V
    .registers 4

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    invoke-static {v0}, Lcom/android/intervalometer/a;->bgo(Lcom/android/intervalometer/a;)I

    move-result v0

    if-nez v0, :cond_35

    .line 339
    iget-object v0, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/android/intervalometer/a;->bgt(Lcom/android/intervalometer/a;I)I

    .line 343
    :goto_f
    const-string/jumbo v0, "IntervalometerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHalve  mIntervalTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    invoke-static {v2}, Lcom/android/intervalometer/a;->bgo(Lcom/android/intervalometer/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    invoke-virtual {v0}, Lcom/android/intervalometer/a;->alG()V

    .line 337
    return-void

    .line 341
    :cond_35
    iget-object v0, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    invoke-static {v0}, Lcom/android/intervalometer/a;->bgo(Lcom/android/intervalometer/a;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/intervalometer/a;->bgt(Lcom/android/intervalometer/a;I)I

    goto :goto_f
.end method

.method public bgB()V
    .registers 3

    .prologue
    .line 373
    const-string/jumbo v0, "IntervalometerFragment"

    const-string/jumbo v1, "onIdle"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lcom/android/intervalometer/a;->bgt(Lcom/android/intervalometer/a;I)I

    .line 375
    iget-object v0, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/intervalometer/a;->bgu(Lcom/android/intervalometer/a;Z)Z

    .line 376
    iget-object v0, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    invoke-static {v0}, Lcom/android/intervalometer/a;->bgw(Lcom/android/intervalometer/a;)V

    .line 377
    iget-object v0, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    invoke-static {v0}, Lcom/android/intervalometer/a;->bgn(Lcom/android/intervalometer/a;)Lcom/android/common/ui/MultiFunctionImageView;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 378
    iget-object v0, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    invoke-static {v0}, Lcom/android/intervalometer/a;->bgn(Lcom/android/intervalometer/a;)Lcom/android/common/ui/MultiFunctionImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/MultiFunctionImageView;->EA()V

    .line 379
    iget-object v0, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    invoke-static {v0}, Lcom/android/intervalometer/a;->bgn(Lcom/android/intervalometer/a;)Lcom/android/common/ui/MultiFunctionImageView;

    move-result-object v0

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ey(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 380
    iget-object v0, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    invoke-static {v0}, Lcom/android/intervalometer/a;->bgn(Lcom/android/intervalometer/a;)Lcom/android/common/ui/MultiFunctionImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    invoke-virtual {v0}, Lcom/android/intervalometer/a;->alq()V

    .line 372
    :cond_47
    return-void
.end method

.method public bgC(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 349
    const-string/jumbo v0, "IntervalometerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSaved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    invoke-static {v0}, Lcom/android/intervalometer/a;->bgs(Lcom/android/intervalometer/a;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    invoke-static {v2}, Lcom/android/intervalometer/a;->bgr(Lcom/android/intervalometer/a;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 351
    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_33

    .line 352
    iget-object v0, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    invoke-static {v0, p1}, Lcom/android/intervalometer/a;->bgz(Lcom/android/intervalometer/a;Ljava/lang/String;)V

    .line 348
    :goto_32
    return-void

    .line 354
    :cond_33
    const-string/jumbo v0, "IntervalometerFragment"

    const-string/jumbo v1, "record is too short. delete this file"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    invoke-static {v0}, Lcom/android/intervalometer/a;->bgq(Lcom/android/intervalometer/a;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    invoke-virtual {v0}, Lcom/android/intervalometer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 356
    iget-object v0, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    iget-object v1, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    invoke-virtual {v1}, Lcom/android/intervalometer/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 357
    const v2, 0x7f0a0103

    .line 358
    const/4 v3, 0x0

    .line 356
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/intervalometer/a;->bgv(Lcom/android/intervalometer/a;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 360
    :cond_5f
    iget-object v0, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    invoke-static {v0}, Lcom/android/intervalometer/a;->bgq(Lcom/android/intervalometer/a;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 361
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_32
.end method

.method public bgD()V
    .registers 3

    .prologue
    .line 367
    const-string/jumbo v0, "IntervalometerFragment"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/android/intervalometer/b;->aPY:Lcom/android/intervalometer/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/intervalometer/a;->bgu(Lcom/android/intervalometer/a;Z)Z

    .line 366
    return-void
.end method
