.class final Lcom/android/dng/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aBu:Lcom/android/dng/j;


# direct methods
.method constructor <init>(Lcom/android/dng/j;)V
    .registers 2

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/dng/C;->aBu:Lcom/android/dng/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/dng/C;->aBu:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aPV(Lcom/android/dng/j;)Lcom/android/common/appService/z;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/z;->lL(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 319
    iget-object v0, p0, Lcom/android/dng/C;->aBu:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aPZ(Lcom/android/dng/j;)V

    .line 317
    :cond_12
    return-void
.end method
