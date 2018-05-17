.class public Lcom/android/objectclear/i;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Lcom/android/camera/ObjectClear/a;
.implements Lcom/android/common/ui/u;


# instance fields
.field aUA:I

.field private aUB:[I

.field private aUC:Landroid/graphics/Bitmap;

.field private aUD:Landroid/widget/ImageView;

.field private aUE:Landroid/widget/ProgressBar;

.field aUF:Lcom/android/objectclear/c;

.field private aUG:Lcom/android/common/ui/RotateLayout;

.field private aUH:Landroid/graphics/Bitmap;

.field private aUI:Lcom/android/objectclear/m;

.field private aUJ:Landroid/widget/ProgressBar;

.field aUK:I

.field private aUL:Landroid/os/Handler;

.field private aUM:I

.field private aUm:I

.field private aUn:I

.field private aUo:Z

.field private aUp:Z

.field private aUq:Lcom/android/common/ui/ZtemtShutterButton;

.field private aUr:Lcom/android/common/ui/ZtemtShutterButton;

.field private aUs:Landroid/widget/TextView;

.field aUt:I

.field private aUu:Landroid/widget/TextView;

.field private aUv:Landroid/graphics/Bitmap;

.field private aUw:Landroid/graphics/Bitmap;

.field private aUx:Landroid/widget/ImageView;

.field private aUy:Landroid/widget/TextView;

.field private aUz:Lcom/android/camera/ObjectClear/NubiaObjectClear;

.field private mPreviewHeight:I

.field private mPreviewWidth:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 84
    iput-object v1, p0, Lcom/android/objectclear/i;->aUz:Lcom/android/camera/ObjectClear/NubiaObjectClear;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/objectclear/i;->aUB:[I

    .line 91
    iput-object v1, p0, Lcom/android/objectclear/i;->aUw:Landroid/graphics/Bitmap;

    .line 92
    iput-object v1, p0, Lcom/android/objectclear/i;->aUH:Landroid/graphics/Bitmap;

    .line 98
    iput v2, p0, Lcom/android/objectclear/i;->aUA:I

    .line 100
    const/16 v0, 0x5a0

    iput v0, p0, Lcom/android/objectclear/i;->aUn:I

    .line 101
    const/16 v0, 0x438

    iput v0, p0, Lcom/android/objectclear/i;->aUm:I

    .line 102
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/android/objectclear/i;->mPreviewWidth:I

    .line 103
    const/16 v0, 0x21c

    iput v0, p0, Lcom/android/objectclear/i;->mPreviewHeight:I

    .line 104
    iput-object v1, p0, Lcom/android/objectclear/i;->aUC:Landroid/graphics/Bitmap;

    .line 105
    iput-object v1, p0, Lcom/android/objectclear/i;->aUv:Landroid/graphics/Bitmap;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/objectclear/i;->aUM:I

    .line 107
    iput-boolean v2, p0, Lcom/android/objectclear/i;->aUp:Z

    .line 112
    new-instance v0, Lcom/android/objectclear/j;

    invoke-direct {v0, p0}, Lcom/android/objectclear/j;-><init>(Lcom/android/objectclear/i;)V

    iput-object v0, p0, Lcom/android/objectclear/i;->aUL:Landroid/os/Handler;

    .line 114
    iput-boolean v2, p0, Lcom/android/objectclear/i;->aUo:Z

    .line 598
    iput-object v1, p0, Lcom/android/objectclear/i;->aUI:Lcom/android/objectclear/m;

    .line 160
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 84
    iput-object v1, p0, Lcom/android/objectclear/i;->aUz:Lcom/android/camera/ObjectClear/NubiaObjectClear;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/objectclear/i;->aUB:[I

    .line 91
    iput-object v1, p0, Lcom/android/objectclear/i;->aUw:Landroid/graphics/Bitmap;

    .line 92
    iput-object v1, p0, Lcom/android/objectclear/i;->aUH:Landroid/graphics/Bitmap;

    .line 98
    iput v2, p0, Lcom/android/objectclear/i;->aUA:I

    .line 100
    const/16 v0, 0x5a0

    iput v0, p0, Lcom/android/objectclear/i;->aUn:I

    .line 101
    const/16 v0, 0x438

    iput v0, p0, Lcom/android/objectclear/i;->aUm:I

    .line 102
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/android/objectclear/i;->mPreviewWidth:I

    .line 103
    const/16 v0, 0x21c

    iput v0, p0, Lcom/android/objectclear/i;->mPreviewHeight:I

    .line 104
    iput-object v1, p0, Lcom/android/objectclear/i;->aUC:Landroid/graphics/Bitmap;

    .line 105
    iput-object v1, p0, Lcom/android/objectclear/i;->aUv:Landroid/graphics/Bitmap;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/objectclear/i;->aUM:I

    .line 107
    iput-boolean v2, p0, Lcom/android/objectclear/i;->aUp:Z

    .line 112
    new-instance v0, Lcom/android/objectclear/j;

    invoke-direct {v0, p0}, Lcom/android/objectclear/j;-><init>(Lcom/android/objectclear/i;)V

    iput-object v0, p0, Lcom/android/objectclear/i;->aUL:Landroid/os/Handler;

    .line 114
    iput-boolean v2, p0, Lcom/android/objectclear/i;->aUo:Z

    .line 598
    iput-object v1, p0, Lcom/android/objectclear/i;->aUI:Lcom/android/objectclear/m;

    .line 156
    return-void
.end method

.method public static blE()Lcom/android/objectclear/i;
    .registers 2

    .prologue
    .line 582
    new-instance v0, Lcom/android/objectclear/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/objectclear/i;-><init>(I)V

    return-object v0
.end method

.method private blG()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 608
    iget-object v0, p0, Lcom/android/objectclear/i;->aUI:Lcom/android/objectclear/m;

    if-eqz v0, :cond_11

    .line 609
    iget-object v0, p0, Lcom/android/objectclear/i;->aUI:Lcom/android/objectclear/m;

    invoke-virtual {v0}, Lcom/android/objectclear/m;->cancel()V

    .line 611
    :try_start_a
    iget-object v0, p0, Lcom/android/objectclear/i;->aUI:Lcom/android/objectclear/m;

    invoke-virtual {v0}, Lcom/android/objectclear/m;->join()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_12

    .line 614
    :goto_f
    iput-object v1, p0, Lcom/android/objectclear/i;->aUI:Lcom/android/objectclear/m;

    .line 607
    :cond_11
    return-void

    .line 612
    :catch_12
    move-exception v0

    goto :goto_f
.end method

.method private blH()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 448
    iget-object v0, p0, Lcom/android/objectclear/i;->aUs:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/android/objectclear/i;->aUq:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/android/objectclear/i;->aUr:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/android/objectclear/i;->aUu:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/android/objectclear/i;->aUy:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/android/objectclear/i;->aUD:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/android/objectclear/i;->aUx:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    return-void
.end method

.method private blI(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 369
    const v0, 0x7f1000f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/objectclear/i;->aUG:Lcom/android/common/ui/RotateLayout;

    .line 370
    iget-object v0, p0, Lcom/android/objectclear/i;->aUG:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 371
    const v0, 0x7f100128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/objectclear/i;->aUs:Landroid/widget/TextView;

    .line 373
    const v0, 0x7f1001bd

    .line 372
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/objectclear/i;->aUE:Landroid/widget/ProgressBar;

    .line 375
    const v0, 0x7f10012b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/objectclear/i;->aUD:Landroid/widget/ImageView;

    .line 376
    const v0, 0x7f10012a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/objectclear/i;->aUx:Landroid/widget/ImageView;

    .line 377
    const v0, 0x7f10012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/objectclear/i;->aUJ:Landroid/widget/ProgressBar;

    .line 379
    const v0, 0x7f100130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/ZtemtShutterButton;

    iput-object v0, p0, Lcom/android/objectclear/i;->aUq:Lcom/android/common/ui/ZtemtShutterButton;

    .line 380
    const v0, 0x7f100131

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/ZtemtShutterButton;

    iput-object v0, p0, Lcom/android/objectclear/i;->aUr:Lcom/android/common/ui/ZtemtShutterButton;

    .line 382
    iget-object v0, p0, Lcom/android/objectclear/i;->aUq:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_6d

    .line 383
    iget-object v0, p0, Lcom/android/objectclear/i;->aUq:Lcom/android/common/ui/ZtemtShutterButton;

    new-instance v1, Lcom/android/objectclear/k;

    invoke-direct {v1, p0, v2}, Lcom/android/objectclear/k;-><init>(Lcom/android/objectclear/i;Lcom/android/objectclear/k;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    :cond_6d
    iget-object v0, p0, Lcom/android/objectclear/i;->aUr:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_7b

    .line 385
    iget-object v0, p0, Lcom/android/objectclear/i;->aUr:Lcom/android/common/ui/ZtemtShutterButton;

    new-instance v1, Lcom/android/objectclear/l;

    invoke-direct {v1, p0, v2}, Lcom/android/objectclear/l;-><init>(Lcom/android/objectclear/i;Lcom/android/objectclear/l;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    :cond_7b
    const v0, 0x7f10012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/objectclear/i;->aUu:Landroid/widget/TextView;

    .line 388
    const v0, 0x7f10012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/objectclear/i;->aUy:Landroid/widget/TextView;

    .line 390
    new-array v0, v3, [Lcom/android/common/ui/h;

    iput-object v0, p0, Lcom/android/objectclear/i;->adw:[Lcom/android/common/ui/h;

    .line 368
    return-void
.end method

.method private blJ()V
    .registers 2

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/android/objectclear/i;->alq()V

    .line 699
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_c

    .line 700
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    .line 702
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/objectclear/i;->aUo:Z

    .line 696
    return-void
.end method

.method private blK()V
    .registers 3

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 707
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/objectclear/i;->aUn:I

    .line 708
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lcom/android/objectclear/i;->aUm:I

    .line 709
    iget v1, p0, Lcom/android/objectclear/i;->aUn:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/objectclear/i;->mPreviewWidth:I

    .line 710
    iget v1, p0, Lcom/android/objectclear/i;->aUm:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/objectclear/i;->mPreviewHeight:I

    .line 711
    iget-object v1, p0, Lcom/android/objectclear/i;->aUz:Lcom/android/camera/ObjectClear/NubiaObjectClear;

    invoke-virtual {v1, v0}, Lcom/android/camera/ObjectClear/NubiaObjectClear;->ayX(Landroid/hardware/Camera$Size;)V

    .line 705
    return-void
.end method

.method private blL(Landroid/graphics/Bitmap;)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    .line 487
    :try_start_1
    const-string/jumbo v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "outputImage mOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/objectclear/i;->aUA:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 489
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 490
    iget v0, p0, Lcom/android/objectclear/i;->aUA:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 491
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 492
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 491
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 492
    const/4 v6, 0x1

    move-object v0, p1

    .line 491
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 494
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pc()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 495
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 496
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 497
    iget-object v1, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/common/appService/W;->pD([B)V

    .line 498
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pE()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_61} :catch_140
    .catchall {:try_start_1 .. :try_end_61} :catchall_150

    .line 536
    iget-object v0, p0, Lcom/android/objectclear/i;->aUL:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 537
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 539
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 499
    return-void

    .line 502
    :cond_6d
    :try_start_6d
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 503
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IMG_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pF()I

    move-result v1

    .line 505
    invoke-static {v0, v1}, Lcom/android/common/f;->aou(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 508
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 509
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 510
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 511
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 514
    invoke-direct {p0, v0}, Lcom/android/objectclear/i;->blS(Ljava/lang/String;)V

    .line 516
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 517
    const-string/jumbo v2, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 518
    const-string/jumbo v2, "_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string/jumbo v0, "width"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 520
    const-string/jumbo v0, "height"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 522
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qa()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/common/f;->aoy(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1, v0}, Lcom/android/common/appService/W;->rY(Landroid/net/Uri;)Z

    .line 527
    iget-object v1, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qj()I

    move-result v1

    .line 528
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->qj()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    const/4 v3, 0x1

    .line 526
    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/objectclear/i;->aUH:Landroid/graphics/Bitmap;

    .line 529
    iget-object v1, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v1

    .line 530
    iget-object v2, p0, Lcom/android/objectclear/i;->aUH:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/common/m/a;->agS(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/common/m/a;

    move-result-object v0

    .line 529
    invoke-virtual {v1, v0}, Lcom/android/common/m/c;->ahj(Lcom/android/common/m/a;)V

    .line 531
    invoke-virtual {p0}, Lcom/android/objectclear/i;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "objectclear_1"

    .line 532
    const-string/jumbo v2, "NubiaObjectClearFragment"

    .line 531
    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_134} :catch_140
    .catchall {:try_start_6d .. :try_end_134} :catchall_150

    .line 536
    iget-object v0, p0, Lcom/android/objectclear/i;->aUL:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 537
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 539
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 485
    :goto_13f
    return-void

    .line 533
    :catch_140
    move-exception v0

    .line 534
    :try_start_141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_144
    .catchall {:try_start_141 .. :try_end_144} :catchall_150

    .line 536
    iget-object v0, p0, Lcom/android/objectclear/i;->aUL:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 537
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 539
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_13f

    .line 535
    :catchall_150
    move-exception v0

    .line 536
    iget-object v1, p0, Lcom/android/objectclear/i;->aUL:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 537
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 539
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 535
    throw v0
.end method

.method private blM()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 458
    iget-object v0, p0, Lcom/android/objectclear/i;->aUC:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/objectclear/i;->aUC:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 462
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/objectclear/i;->aUv:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/objectclear/i;->aUv:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 466
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/android/objectclear/i;->aUw:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/objectclear/i;->aUw:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 470
    :cond_25
    :goto_25
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 457
    return-void

    .line 459
    :cond_29
    iget-object v0, p0, Lcom/android/objectclear/i;->aUC:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 460
    iput-object v1, p0, Lcom/android/objectclear/i;->aUC:Landroid/graphics/Bitmap;

    goto :goto_d

    .line 463
    :cond_31
    iget-object v0, p0, Lcom/android/objectclear/i;->aUv:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 464
    iput-object v1, p0, Lcom/android/objectclear/i;->aUv:Landroid/graphics/Bitmap;

    goto :goto_19

    .line 467
    :cond_39
    iget-object v0, p0, Lcom/android/objectclear/i;->aUw:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 468
    iput-object v1, p0, Lcom/android/objectclear/i;->aUw:Landroid/graphics/Bitmap;

    goto :goto_25
.end method

.method private blN()V
    .registers 3

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/objectclear/i;->aUL:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 618
    return-void
.end method

.method private blP()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 475
    iget-object v0, p0, Lcom/android/objectclear/i;->aUH:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/objectclear/i;->aUH:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 479
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/objectclear/i;->aUw:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1a

    .line 480
    return-void

    .line 476
    :cond_12
    iget-object v0, p0, Lcom/android/objectclear/i;->aUH:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 477
    iput-object v1, p0, Lcom/android/objectclear/i;->aUH:Landroid/graphics/Bitmap;

    goto :goto_d

    .line 482
    :cond_1a
    iget-object v0, p0, Lcom/android/objectclear/i;->aUw:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/objectclear/i;->blL(Landroid/graphics/Bitmap;)V

    .line 473
    return-void
.end method

.method private blR()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 601
    iget-object v0, p0, Lcom/android/objectclear/i;->aUI:Lcom/android/objectclear/m;

    if-nez v0, :cond_11

    .line 602
    new-instance v0, Lcom/android/objectclear/m;

    invoke-direct {v0, p0, v1}, Lcom/android/objectclear/m;-><init>(Lcom/android/objectclear/i;Lcom/android/objectclear/m;)V

    iput-object v0, p0, Lcom/android/objectclear/i;->aUI:Lcom/android/objectclear/m;

    .line 603
    iget-object v0, p0, Lcom/android/objectclear/i;->aUI:Lcom/android/objectclear/m;

    invoke-virtual {v0}, Lcom/android/objectclear/m;->start()V

    .line 600
    :cond_11
    return-void
.end method

.method private blS(Ljava/lang/String;)V
    .registers 8

    .prologue
    const v5, 0x3c23d70a    # 0.01f

    .line 545
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Ln()F

    move-result v0

    .line 546
    iget-object v1, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pI()F

    move-result v1

    .line 548
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 550
    sget v3, Lcom/android/common/exif/o;->PC:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/common/custom/x;->aem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 552
    sget v3, Lcom/android/common/exif/o;->PD:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/common/custom/x;->aen()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 554
    sget v3, Lcom/android/common/exif/o;->PE:I

    new-instance v4, Lcom/android/common/exif/m;

    invoke-direct {v4, v1, v5}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 555
    sget v1, Lcom/android/common/exif/o;->PF:I

    new-instance v3, Lcom/android/common/exif/m;

    invoke-direct {v3, v0, v5}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 557
    invoke-static {p1, v2}, Lcom/android/common/h;->aph(Ljava/lang/String;Landroid/util/SparseArray;)Ljava/io/ByteArrayOutputStream;

    .line 543
    return-void
.end method

.method static synthetic blW(Lcom/android/objectclear/i;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/objectclear/i;->aUp:Z

    return v0
.end method

.method static synthetic blX(Lcom/android/objectclear/i;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic blY(Lcom/android/objectclear/i;)Lcom/android/common/ui/ZtemtShutterButton;
    .registers 2

    iget-object v0, p0, Lcom/android/objectclear/i;->aUq:Lcom/android/common/ui/ZtemtShutterButton;

    return-object v0
.end method

.method static synthetic blZ(Lcom/android/objectclear/i;)Lcom/android/common/ui/ZtemtShutterButton;
    .registers 2

    iget-object v0, p0, Lcom/android/objectclear/i;->aUr:Lcom/android/common/ui/ZtemtShutterButton;

    return-object v0
.end method

.method static synthetic bma(Lcom/android/objectclear/i;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/objectclear/i;->aUv:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic bmb(Lcom/android/objectclear/i;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/objectclear/i;->aUx:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic bmc(Lcom/android/objectclear/i;)Lcom/android/camera/ObjectClear/NubiaObjectClear;
    .registers 2

    iget-object v0, p0, Lcom/android/objectclear/i;->aUz:Lcom/android/camera/ObjectClear/NubiaObjectClear;

    return-object v0
.end method

.method static synthetic bmd(Lcom/android/objectclear/i;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/android/objectclear/i;->aUJ:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic bme(Lcom/android/objectclear/i;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/objectclear/i;->aUL:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic bmf(Lcom/android/objectclear/i;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/objectclear/i;->aUo:Z

    return p1
.end method

.method static synthetic bmg(Lcom/android/objectclear/i;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/objectclear/i;->aUp:Z

    return p1
.end method

.method static synthetic bmh(Lcom/android/objectclear/i;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/android/objectclear/i;->aUw:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic bmi(Lcom/android/objectclear/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/objectclear/i;->blG()V

    return-void
.end method

.method static synthetic bmj(Lcom/android/objectclear/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/objectclear/i;->blH()V

    return-void
.end method

.method static synthetic bmk(Lcom/android/objectclear/i;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/objectclear/i;->alr()V

    return-void
.end method

.method static synthetic bml(Lcom/android/objectclear/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/objectclear/i;->blJ()V

    return-void
.end method

.method static synthetic bmm(Lcom/android/objectclear/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/objectclear/i;->blK()V

    return-void
.end method

.method static synthetic bmn(Lcom/android/objectclear/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/objectclear/i;->blM()V

    return-void
.end method

.method static synthetic bmo(Lcom/android/objectclear/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/objectclear/i;->blN()V

    return-void
.end method

.method static synthetic bmp(Lcom/android/objectclear/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/objectclear/i;->blP()V

    return-void
.end method


# virtual methods
.method public ayZ()V
    .registers 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/objectclear/i;->blF()V

    .line 189
    return-void
.end method

.method public aza(Landroid/view/MotionEvent;II)V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 247
    iget-object v0, p0, Lcom/android/objectclear/i;->aUw:Landroid/graphics/Bitmap;

    if-nez v0, :cond_10

    .line 248
    const-string/jumbo v0, "NubiaObjectClearFragment"

    const-string/jumbo v1, "mMaskBitmap_rotate is null, return"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void

    .line 252
    :cond_10
    iget v0, p0, Lcom/android/objectclear/i;->aUM:I

    if-eqz v0, :cond_38

    .line 253
    const-string/jumbo v0, "NubiaObjectClearFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retValue is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/objectclear/i;->aUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void

    .line 257
    :cond_38
    iget-object v0, p0, Lcom/android/objectclear/i;->aUx:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/objectclear/i;->aUx:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_7a

    .line 258
    :cond_48
    const-string/jumbo v0, "NubiaObjectClearFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMaskView width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/objectclear/i;->aUx:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/objectclear/i;->aUx:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void

    .line 262
    :cond_7a
    iput p2, p0, Lcom/android/objectclear/i;->aUK:I

    .line 263
    iput p3, p0, Lcom/android/objectclear/i;->aUt:I

    .line 266
    iget-object v0, p0, Lcom/android/objectclear/i;->aUx:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/objectclear/i;->aUB:[I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/objectclear/i;->aUB:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/objectclear/i;->aUB:[I

    aget v2, v2, v6

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 271
    iget-object v2, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pv()I

    move-result v2

    invoke-static {v5, v2}, Lcom/android/common/h;->aoQ(II)I

    move-result v2

    .line 272
    iget-object v3, p0, Lcom/android/objectclear/i;->aUx:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/objectclear/i;->aUx:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-static {v3, v4, v0, v1, v2}, Lcom/android/common/h;->aqd(IIIII)[I

    move-result-object v0

    .line 273
    aget v1, v0, v5

    .line 274
    aget v0, v0, v6

    .line 277
    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_186

    .line 278
    mul-int/2addr v1, p2

    iget-object v2, p0, Lcom/android/objectclear/i;->aUx:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    .line 279
    mul-int/2addr v0, p3

    iget-object v2, p0, Lcom/android/objectclear/i;->aUx:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/2addr v0, v2

    .line 285
    :goto_cd
    const-string/jumbo v2, "NubiaObjectClearFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mMaskView.getLocationInWindow mPosition[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/objectclear/i;->aUB:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 286
    const-string/jumbo v4, " mPosition[1] = "

    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 286
    iget-object v4, p0, Lcom/android/objectclear/i;->aUB:[I

    aget v4, v4, v6

    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string/jumbo v2, "NubiaObjectClearFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dispatchTouchEvent mStartX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 288
    const-string/jumbo v4, " mStartY: "

    .line 287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string/jumbo v2, "NubiaObjectClearFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mMaskView width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/objectclear/i;->aUx:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 290
    const-string/jumbo v4, " height:"

    .line 289
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 290
    iget-object v4, p0, Lcom/android/objectclear/i;->aUx:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    .line 289
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string/jumbo v2, "NubiaObjectClearFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "objectClearTouchDown x: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0}, Lcom/android/objectclear/i;->blR()V

    .line 294
    iget-object v2, p0, Lcom/android/objectclear/i;->aUI:Lcom/android/objectclear/m;

    invoke-virtual {v2, v1, v0}, Lcom/android/objectclear/m;->bmr(II)V

    .line 245
    return-void

    .line 281
    :cond_186
    mul-int/2addr v1, p2

    iget-object v2, p0, Lcom/android/objectclear/i;->aUx:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    .line 282
    mul-int/2addr v0, p3

    iget-object v2, p0, Lcom/android/objectclear/i;->aUx:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/2addr v0, v2

    goto/16 :goto_cd
.end method

.method public azb(Landroid/hardware/Camera$Size;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 194
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/android/objectclear/i;->aUn:I

    .line 195
    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/objectclear/i;->aUm:I

    .line 196
    iget v0, p0, Lcom/android/objectclear/i;->aUn:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/objectclear/i;->mPreviewWidth:I

    .line 197
    iget v0, p0, Lcom/android/objectclear/i;->aUm:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/objectclear/i;->mPreviewHeight:I

    .line 198
    const-string/jumbo v0, "NubiaObjectClearFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NubiaObjectClearPreview onCreate iWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/objectclear/i;->aUn:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 199
    const-string/jumbo v3, " iHeight = "

    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 199
    iget v3, p0, Lcom/android/objectclear/i;->aUm:I

    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/objectclear/i;->aUC:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4f

    .line 202
    iget v0, p0, Lcom/android/objectclear/i;->mPreviewWidth:I

    iget v2, p0, Lcom/android/objectclear/i;->mPreviewHeight:I

    .line 203
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 202
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/objectclear/i;->aUC:Landroid/graphics/Bitmap;

    .line 205
    :cond_4f
    iget-object v0, p0, Lcom/android/objectclear/i;->aUv:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5f

    .line 206
    iget v0, p0, Lcom/android/objectclear/i;->aUn:I

    iget v2, p0, Lcom/android/objectclear/i;->aUm:I

    .line 207
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 206
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/objectclear/i;->aUv:Landroid/graphics/Bitmap;

    .line 210
    :cond_5f
    invoke-virtual {p0}, Lcom/android/objectclear/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 212
    const-string/jumbo v2, "NubiaObjectClearFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Detect display.getWidth() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string/jumbo v2, "NubiaObjectClearFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Detect display.getHeight() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/objectclear/i;->aUC:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/objectclear/i;->aUv:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Lcom/android/camera/ObjectClear/NubiaObjectClear;->Detect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/android/objectclear/i;->aUM:I

    .line 216
    const-string/jumbo v0, "NubiaObjectClearFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate Detect retValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/objectclear/i;->aUM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 219
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 220
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/common/h;->aoQ(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 221
    iget-object v0, p0, Lcom/android/objectclear/i;->aUC:Landroid/graphics/Bitmap;

    .line 222
    iget-object v2, p0, Lcom/android/objectclear/i;->aUC:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/android/objectclear/i;->aUC:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    .line 221
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/objectclear/i;->aUC:Landroid/graphics/Bitmap;

    .line 224
    iget-object v0, p0, Lcom/android/objectclear/i;->aUv:Landroid/graphics/Bitmap;

    .line 225
    iget-object v2, p0, Lcom/android/objectclear/i;->aUv:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/android/objectclear/i;->aUv:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    .line 224
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/objectclear/i;->aUw:Landroid/graphics/Bitmap;

    .line 227
    iget-object v0, p0, Lcom/android/objectclear/i;->aUw:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/objectclear/i;->aUC:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1}, Lcom/android/objectclear/i;->blU(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 229
    iget v0, p0, Lcom/android/objectclear/i;->aUM:I

    invoke-virtual {p0, v0}, Lcom/android/objectclear/i;->blT(I)V

    .line 193
    return-void
.end method

.method public azc()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/objectclear/i;->aUs:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/android/objectclear/i;->aUq:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/android/objectclear/i;->aUr:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/android/objectclear/i;->aUD:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/android/objectclear/i;->aUx:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iput-boolean v1, p0, Lcom/android/objectclear/i;->aUp:Z

    .line 180
    return-void
.end method

.method public azd(I)V
    .registers 5

    .prologue
    .line 315
    iput p1, p0, Lcom/android/objectclear/i;->aUA:I

    .line 316
    const-string/jumbo v0, "Nubia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/objectclear/i;->aUA:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public blD()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 753
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    if-nez v0, :cond_6

    .line 754
    return-void

    .line 758
    :cond_6
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pK()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 759
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    .line 758
    if-nez v0, :cond_1e

    .line 760
    invoke-virtual {p0}, Lcom/android/objectclear/i;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_7d

    .line 763
    :cond_1e
    const-string/jumbo v0, "NubiaObjectClearFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Storage enough: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pK()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 764
    const-string/jumbo v2, "; Activity paused: "

    .line 763
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 764
    iget-object v2, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pk()Z

    move-result v2

    .line 763
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 765
    const-string/jumbo v2, "; Function state: "

    .line 763
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 765
    invoke-virtual {p0}, Lcom/android/objectclear/i;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    .line 763
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 766
    const-string/jumbo v2, "; UI state: "

    .line 763
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 766
    invoke-virtual {p0}, Lcom/android/objectclear/i;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v2

    .line 763
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 767
    const-string/jumbo v2, "; Device state: "

    .line 763
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 767
    invoke-virtual {p0}, Lcom/android/objectclear/i;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v2

    .line 763
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    return-void

    .line 761
    :cond_7d
    invoke-virtual {p0}, Lcom/android/objectclear/i;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_1e

    .line 762
    invoke-virtual {p0}, Lcom/android/objectclear/i;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_1e

    .line 771
    iget-object v0, p0, Lcom/android/objectclear/i;->aUz:Lcom/android/camera/ObjectClear/NubiaObjectClear;

    iget-object v1, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pC()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ObjectClear/NubiaObjectClear;->ayY(I)V

    .line 772
    new-instance v0, Lcom/android/objectclear/c;

    invoke-virtual {p0}, Lcom/android/objectclear/i;->all()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/objectclear/c;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/objectclear/i;->aUF:Lcom/android/objectclear/c;

    .line 773
    iget-object v0, p0, Lcom/android/objectclear/i;->aUF:Lcom/android/objectclear/c;

    .line 774
    new-instance v1, Lcom/android/objectclear/o;

    invoke-direct {v1, p0}, Lcom/android/objectclear/o;-><init>(Lcom/android/objectclear/i;)V

    .line 773
    invoke-virtual {v0, v1}, Lcom/android/objectclear/c;->blp(Lcom/android/objectclear/d;)V

    .line 793
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/common/camerastate/b;

    sget-object v2, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 794
    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    aput-object v2, v1, v4

    .line 795
    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 796
    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 793
    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amM([Lcom/android/common/camerastate/b;)V

    .line 797
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/common/independentFocusExposure/g;->dy(Z)V

    .line 798
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/g;->dz(I)V

    .line 800
    iget-object v0, p0, Lcom/android/objectclear/i;->aUF:Lcom/android/objectclear/c;

    invoke-virtual {v0}, Lcom/android/objectclear/c;->start()V

    .line 752
    return-void
.end method

.method public blF()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 407
    invoke-direct {p0}, Lcom/android/objectclear/i;->blG()V

    .line 408
    invoke-static {}, Lcom/android/camera/ObjectClear/NubiaObjectClear;->Cancel()V

    .line 409
    invoke-direct {p0}, Lcom/android/objectclear/i;->blN()V

    .line 410
    invoke-direct {p0}, Lcom/android/objectclear/i;->blH()V

    .line 411
    invoke-direct {p0}, Lcom/android/objectclear/i;->blJ()V

    .line 412
    invoke-direct {p0}, Lcom/android/objectclear/i;->blM()V

    .line 413
    invoke-virtual {p0, v0, v0}, Lcom/android/objectclear/i;->blU(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 414
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amI()V

    .line 415
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/g;->dy(Z)V

    .line 416
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/g;->dz(I)V

    .line 417
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 418
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/objectclear/i;->aUM:I

    .line 406
    return-void
.end method

.method public blO()V
    .registers 3

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/objectclear/i;->aUE:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_11

    .line 567
    iget-object v0, p0, Lcom/android/objectclear/i;->aUE:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 568
    iget-object v0, p0, Lcom/android/objectclear/i;->aUE:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 565
    :cond_11
    return-void
.end method

.method public blQ()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 573
    iget-object v0, p0, Lcom/android/objectclear/i;->aUE:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_f

    .line 574
    iget-object v0, p0, Lcom/android/objectclear/i;->aUE:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 575
    iget-object v0, p0, Lcom/android/objectclear/i;->aUE:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 577
    :cond_f
    iget-object v0, p0, Lcom/android/objectclear/i;->aUG:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_1a

    .line 578
    iget-object v0, p0, Lcom/android/objectclear/i;->aUG:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 572
    :cond_1a
    return-void
.end method

.method public blT(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 302
    if-nez p1, :cond_4

    .line 301
    :cond_3
    :goto_3
    return-void

    .line 304
    :cond_4
    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    .line 306
    iget-object v0, p0, Lcom/android/objectclear/i;->aUu:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 307
    :cond_d
    const/4 v0, -0x2

    if-ne p1, v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/android/objectclear/i;->aUy:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public blU(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 233
    const-string/jumbo v0, "Nubia"

    const-string/jumbo v1, "updatePreviewViewDisplay"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/objectclear/i;->aUx:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    iget-object v0, p0, Lcom/android/objectclear/i;->aUD:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    return-void
.end method

.method public blV(I)V
    .registers 4

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/objectclear/i;->aUE:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 562
    iget-object v0, p0, Lcom/android/objectclear/i;->aUE:Landroid/widget/ProgressBar;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 560
    :cond_b
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/objectclear/i;->aUG:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_13

    .line 588
    iget-object v0, p0, Lcom/android/objectclear/i;->aUG:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 589
    iget-object v0, p0, Lcom/android/objectclear/i;->aUG:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 592
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_22

    .line 593
    iget-object v0, p0, Lcom/android/objectclear/i;->aUz:Lcom/android/camera/ObjectClear/NubiaObjectClear;

    iget v1, p0, Lcom/android/objectclear/i;->aUn:I

    iget v2, p0, Lcom/android/objectclear/i;->aUm:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/camera/ObjectClear/NubiaObjectClear;->ayW(Landroid/view/MotionEvent;II)V

    .line 595
    :cond_22
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .registers 3

    .prologue
    .line 805
    const-string/jumbo v0, "NubiaObjectClearFragment"

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-boolean v0, p0, Lcom/android/objectclear/i;->aUo:Z

    if-eqz v0, :cond_14

    .line 807
    iget-object v0, p0, Lcom/android/objectclear/i;->aUz:Lcom/android/camera/ObjectClear/NubiaObjectClear;

    invoke-virtual {v0}, Lcom/android/camera/ObjectClear/NubiaObjectClear;->ayU()V

    .line 808
    const/4 v0, 0x1

    return v0

    .line 810
    :cond_14
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 321
    invoke-super {p0, p1}, Lcom/android/common/o/l;->onCreate(Landroid/os/Bundle;)V

    .line 320
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 168
    iget-boolean v0, p0, Lcom/android/objectclear/i;->adu:Z

    if-eqz v0, :cond_9

    .line 169
    return-object v1

    .line 171
    :cond_9
    const v0, 0x7f040092

    .line 172
    const/4 v1, 0x0

    .line 171
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 173
    if-nez v0, :cond_1c

    .line 174
    const-string/jumbo v1, "NubiaObjectClearFragment"

    const-string/jumbo v2, "view == null"

    invoke-static {v1, v2}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_1c
    invoke-direct {p0, v0}, Lcom/android/objectclear/i;->blI(Landroid/view/View;)V

    .line 177
    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 365
    invoke-super {p0}, Lcom/android/common/o/l;->onDestroy()V

    .line 364
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 346
    iget-boolean v0, p0, Lcom/android/objectclear/i;->adu:Z

    if-eqz v0, :cond_9

    .line 347
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 348
    return-void

    .line 350
    :cond_9
    invoke-virtual {p0}, Lcom/android/objectclear/i;->blO()V

    .line 351
    invoke-direct {p0}, Lcom/android/objectclear/i;->blG()V

    .line 352
    invoke-direct {p0}, Lcom/android/objectclear/i;->blN()V

    .line 353
    iget-object v0, p0, Lcom/android/objectclear/i;->aUL:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    iget-object v0, p0, Lcom/android/objectclear/i;->aUF:Lcom/android/objectclear/c;

    if-eqz v0, :cond_26

    .line 356
    iget-object v0, p0, Lcom/android/objectclear/i;->aUF:Lcom/android/objectclear/c;

    invoke-virtual {v0}, Lcom/android/objectclear/c;->stop()V

    .line 357
    iget-object v0, p0, Lcom/android/objectclear/i;->aUF:Lcom/android/objectclear/c;

    invoke-virtual {v0, v2}, Lcom/android/objectclear/c;->blp(Lcom/android/objectclear/d;)V

    .line 360
    :cond_26
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 345
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 326
    const-string/jumbo v0, "Nubia"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 328
    iget-boolean v0, p0, Lcom/android/objectclear/i;->adu:Z

    if-eqz v0, :cond_13

    .line 329
    return-void

    .line 330
    :cond_13
    iget-object v0, p0, Lcom/android/objectclear/i;->aUz:Lcom/android/camera/ObjectClear/NubiaObjectClear;

    if-nez v0, :cond_22

    .line 331
    new-instance v0, Lcom/android/camera/ObjectClear/NubiaObjectClear;

    invoke-virtual {p0}, Lcom/android/objectclear/i;->all()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/camera/ObjectClear/NubiaObjectClear;-><init>(Lcom/android/common/appService/W;Lcom/android/camera/ObjectClear/a;)V

    iput-object v0, p0, Lcom/android/objectclear/i;->aUz:Lcom/android/camera/ObjectClear/NubiaObjectClear;

    .line 334
    :cond_22
    invoke-direct {p0}, Lcom/android/objectclear/i;->blH()V

    .line 335
    invoke-static {}, Lcom/android/camera/ObjectClear/NubiaObjectClear;->Cancel()V

    .line 336
    invoke-direct {p0}, Lcom/android/objectclear/i;->blJ()V

    .line 337
    invoke-direct {p0}, Lcom/android/objectclear/i;->blM()V

    .line 338
    invoke-virtual {p0, v2, v2}, Lcom/android/objectclear/i;->blU(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 339
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amI()V

    .line 340
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/common/independentFocusExposure/g;->dy(Z)V

    .line 341
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/common/independentFocusExposure/g;->dz(I)V

    .line 325
    return-void
.end method

.method public xf()V
    .registers 4

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    if-nez v0, :cond_5

    .line 727
    return-void

    .line 731
    :cond_5
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pK()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 732
    iget-object v0, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    .line 731
    if-nez v0, :cond_1d

    .line 733
    invoke-virtual {p0}, Lcom/android/objectclear/i;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_7c

    .line 736
    :cond_1d
    const-string/jumbo v0, "NubiaObjectClearFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Storage enough: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pK()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 737
    const-string/jumbo v2, "; Activity paused: "

    .line 736
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 737
    iget-object v2, p0, Lcom/android/objectclear/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pk()Z

    move-result v2

    .line 736
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 738
    const-string/jumbo v2, "; Function state: "

    .line 736
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 738
    invoke-virtual {p0}, Lcom/android/objectclear/i;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    .line 736
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 739
    const-string/jumbo v2, "; UI state: "

    .line 736
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 739
    invoke-virtual {p0}, Lcom/android/objectclear/i;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v2

    .line 736
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 740
    const-string/jumbo v2, "; Device state: "

    .line 736
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 740
    invoke-virtual {p0}, Lcom/android/objectclear/i;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v2

    .line 736
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    return-void

    .line 734
    :cond_7c
    invoke-virtual {p0}, Lcom/android/objectclear/i;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_1d

    .line 735
    invoke-virtual {p0}, Lcom/android/objectclear/i;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_1d

    .line 744
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    new-instance v1, Lcom/android/objectclear/b;

    invoke-direct {v1, p0}, Lcom/android/objectclear/b;-><init>(Lcom/android/objectclear/i;)V

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->hr(Lcom/android/common/c/a;)V

    .line 725
    return-void
.end method

.method public xg(Z)V
    .registers 2

    .prologue
    .line 720
    return-void
.end method

.method public xh()V
    .registers 1

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/android/objectclear/i;->xf()V

    .line 748
    return-void
.end method
