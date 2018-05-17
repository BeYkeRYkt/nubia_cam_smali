.class Lcom/android/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field final synthetic aWK:Lcom/android/e/b;


# direct methods
.method private constructor <init>(Lcom/android/e/b;)V
    .registers 2

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/e/b;Lcom/android/e/d;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/e/d;-><init>(Lcom/android/e/b;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 14

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 594
    array-length v0, p1

    iget-object v1, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    invoke-static {v1}, Lcom/android/e/b;->box(Lcom/android/e/b;)Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    invoke-static {v2}, Lcom/android/e/b;->box(Lcom/android/e/b;)Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_5d

    .line 595
    const-string/jumbo v0, "MicrospurFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preview data length is error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 596
    const-string/jumbo v2, "real preview size:"

    .line 595
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 596
    iget-object v2, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    invoke-static {v2}, Lcom/android/e/b;->box(Lcom/android/e/b;)Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    .line 595
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 596
    const-string/jumbo v2, "x"

    .line 595
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 596
    iget-object v2, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    invoke-static {v2}, Lcom/android/e/b;->box(Lcom/android/e/b;)Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    .line 595
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    return-void

    .line 599
    :cond_5d
    iget-object v0, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->boE(Lcom/android/e/b;)V

    .line 600
    iget-object v0, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    iget-object v1, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    invoke-static {v1}, Lcom/android/e/b;->box(Lcom/android/e/b;)Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v1, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    invoke-static {v1}, Lcom/android/e/b;->box(Lcom/android/e/b;)Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    iget-object v1, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    invoke-static {v1}, Lcom/android/e/b;->bor(Lcom/android/e/b;)Lcom/fotonation/utils/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fotonation/utils/Point;->X()I

    move-result v4

    iget-object v1, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    invoke-static {v1}, Lcom/android/e/b;->bor(Lcom/android/e/b;)Lcom/fotonation/utils/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fotonation/utils/Point;->Y()I

    move-result v5

    iget-object v1, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    invoke-static {v1}, Lcom/android/e/b;->boA(Lcom/android/e/b;)I

    move-result v6

    iget-object v1, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    invoke-static {v1}, Lcom/android/e/b;->boz(Lcom/android/e/b;)I

    move-result v7

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/android/e/b;->boF(Lcom/android/e/b;[BIIIIII)V

    .line 601
    iget-object v0, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->boy(Lcom/android/e/b;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    invoke-static {v1}, Lcom/android/e/b;->boA(Lcom/android/e/b;)I

    move-result v1

    iget-object v2, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    invoke-static {v2}, Lcom/android/e/b;->boz(Lcom/android/e/b;)I

    move-result v2

    invoke-static {v0, v1, v2, v10}, Lcom/android/common/D;->avZ([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 602
    const/16 v1, 0xa

    const/16 v2, 0x14

    const/16 v3, 0x1e

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    .line 603
    iget-object v2, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    invoke-static {v2}, Lcom/android/e/b;->boA(Lcom/android/e/b;)I

    move-result v2

    iget-object v3, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    invoke-static {v3}, Lcom/android/e/b;->boz(Lcom/android/e/b;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/nubia/camera/common/Native/HistUtil;->getMaxHis(Landroid/graphics/Bitmap;[III)I

    .line 604
    aget v0, v1, v10

    int-to-double v2, v0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 605
    aget v2, v1, v8

    if-le v0, v2, :cond_ec

    aget v1, v1, v9

    if-le v0, v1, :cond_ec

    .line 606
    iget-object v0, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->boq(Lcom/android/e/b;)Lcom/android/common/g/a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/common/g/a;->aaJ(I)V

    .line 607
    iget-object v0, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->bop(Lcom/android/e/b;)Lcom/android/e/g;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/e/g;->boN(I)V

    .line 593
    :goto_eb
    return-void

    .line 609
    :cond_ec
    iget-object v0, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->boq(Lcom/android/e/b;)Lcom/android/common/g/a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/common/g/a;->aaJ(I)V

    .line 610
    iget-object v0, p0, Lcom/android/e/d;->aWK:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->bop(Lcom/android/e/b;)Lcom/android/e/g;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/e/g;->boN(I)V

    goto :goto_eb
.end method
