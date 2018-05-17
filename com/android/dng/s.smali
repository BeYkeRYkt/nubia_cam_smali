.class final Lcom/android/dng/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/K;


# instance fields
.field final synthetic aBh:Lcom/android/dng/c;


# direct methods
.method constructor <init>(Lcom/android/dng/c;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/dng/s;->aBh:Lcom/android/dng/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Am(Z)V
    .registers 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/dng/s;->aBh:Lcom/android/dng/c;

    invoke-static {v0, p1}, Lcom/android/dng/c;->aPr(Lcom/android/dng/c;Z)Z

    .line 110
    iget-object v0, p0, Lcom/android/dng/s;->aBh:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPg(Lcom/android/dng/c;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 111
    iget-object v0, p0, Lcom/android/dng/s;->aBh:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPh(Lcom/android/dng/c;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    :goto_19
    return-void

    .line 113
    :cond_1a
    iget-object v0, p0, Lcom/android/dng/s;->aBh:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPh(Lcom/android/dng/c;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_19
.end method
