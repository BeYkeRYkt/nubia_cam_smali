.class public Lcom/android/videomaker/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field aKC:Landroid/graphics/Bitmap;

.field aKD:I

.field aKE:Z

.field aKF:Ljava/lang/String;

.field aKG:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/videomaker/a;->aKG:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/android/videomaker/a;->aKC:Landroid/graphics/Bitmap;

    .line 9
    iput-object v0, p0, Lcom/android/videomaker/a;->aKF:Ljava/lang/String;

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videomaker/a;->aKE:Z

    .line 16
    iput p1, p0, Lcom/android/videomaker/a;->aKD:I

    .line 17
    iput-object p2, p0, Lcom/android/videomaker/a;->aKG:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/android/videomaker/a;->aKC:Landroid/graphics/Bitmap;

    .line 19
    iput-object p4, p0, Lcom/android/videomaker/a;->aKF:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public aZT()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/android/videomaker/a;->aKC:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 52
    iget-object v0, p0, Lcom/android/videomaker/a;->aKC:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 53
    iput-object v1, p0, Lcom/android/videomaker/a;->aKC:Landroid/graphics/Bitmap;

    .line 55
    :cond_c
    return-void
.end method

.method public aZU()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/videomaker/a;->aKC:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public aZV()Z
    .registers 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/videomaker/a;->aKE:Z

    return v0
.end method

.method public aZW()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/videomaker/a;->aKG:Ljava/lang/String;

    return-object v0
.end method

.method public aZX(Z)V
    .registers 2

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/videomaker/a;->aKE:Z

    .line 46
    return-void
.end method
