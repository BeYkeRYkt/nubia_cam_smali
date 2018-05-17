.class final Lcom/android/pretty/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/pretty/g;


# instance fields
.field final synthetic aFk:Lcom/android/pretty/j;


# direct methods
.method constructor <init>(Lcom/android/pretty/j;)V
    .registers 2

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/pretty/D;->aFk:Lcom/android/pretty/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aSu(I)V
    .registers 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/pretty/D;->aFk:Lcom/android/pretty/j;

    invoke-static {v0}, Lcom/android/pretty/j;->aSQ(Lcom/android/pretty/j;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/pretty/D;->aFk:Lcom/android/pretty/j;

    invoke-static {v1}, Lcom/android/pretty/j;->aSN(Lcom/android/pretty/j;)Lcom/android/pretty/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/pretty/a;->aQU(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 284
    return-void
.end method
