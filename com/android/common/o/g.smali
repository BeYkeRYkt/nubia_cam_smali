.class Lcom/android/common/o/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/m/d;


# instance fields
.field final synthetic adm:Lcom/android/common/o/e;


# direct methods
.method private constructor <init>(Lcom/android/common/o/e;)V
    .registers 2

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/common/o/g;->adm:Lcom/android/common/o/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/o/e;Lcom/android/common/o/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/o/g;-><init>(Lcom/android/common/o/e;)V

    return-void
.end method


# virtual methods
.method public ahH(Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/common/o/g;->adm:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pc()Z

    move-result v0

    if-nez v0, :cond_14

    .line 471
    iget-object v0, p0, Lcom/android/common/o/g;->adm:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pf()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 469
    :cond_14
    :goto_14
    return-void

    .line 472
    :cond_15
    iget-object v0, p0, Lcom/android/common/o/g;->adm:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->adg:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->yB(Landroid/graphics/Bitmap;)V

    goto :goto_14
.end method
