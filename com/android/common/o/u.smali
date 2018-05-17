.class final Lcom/android/common/o/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic aew:Lcom/android/common/o/a;


# direct methods
.method constructor <init>(Lcom/android/common/o/a;)V
    .registers 2

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/common/o/u;->aew:Lcom/android/common/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 457
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 458
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 459
    :cond_9
    const/4 v0, 0x1

    return v0
.end method
