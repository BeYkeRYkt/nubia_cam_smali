.class public Lcom/android/electronicfno/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aVj:Landroid/graphics/Bitmap;

.field private aVk:I


# direct methods
.method public constructor <init>(ILandroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput p1, p0, Lcom/android/electronicfno/d;->aVk:I

    .line 224
    iput-object p2, p0, Lcom/android/electronicfno/d;->aVj:Landroid/graphics/Bitmap;

    .line 222
    return-void
.end method

.method static synthetic bmO(Lcom/android/electronicfno/d;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/electronicfno/d;->aVj:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic bmP(Lcom/android/electronicfno/d;)I
    .registers 2

    iget v0, p0, Lcom/android/electronicfno/d;->aVk:I

    return v0
.end method
