.class Lcom/android/trajectory/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# instance fields
.field final synthetic asS:Lcom/android/trajectory/a;


# direct methods
.method private constructor <init>(Lcom/android/trajectory/a;)V
    .registers 2

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/trajectory/b;->asS:Lcom/android/trajectory/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/trajectory/a;Lcom/android/trajectory/b;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/trajectory/b;-><init>(Lcom/android/trajectory/a;)V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 690
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    .line 691
    check-cast p1, Landroid/widget/ImageView;

    .line 692
    check-cast p2, Landroid/graphics/Bitmap;

    .line 693
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 694
    const/4 v0, 0x1

    return v0

    .line 696
    :cond_11
    const/4 v0, 0x0

    return v0
.end method
