.class final Lcom/android/common/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/q/b;


# instance fields
.field final synthetic akR:Lcom/android/common/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 2

    .prologue
    .line 666
    iput-object p1, p0, Lcom/android/common/Y;->akR:Lcom/android/common/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public and(F)V
    .registers 4

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/common/Y;->akR:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 672
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 673
    iget-object v1, p0, Lcom/android/common/Y;->akR:Lcom/android/common/ActivityBase;

    invoke-virtual {v1}, Lcom/android/common/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 669
    return-void
.end method
