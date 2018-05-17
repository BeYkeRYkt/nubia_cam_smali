.class final Lcom/android/common/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic aky:Lcom/android/common/g;


# direct methods
.method constructor <init>(Lcom/android/common/g;)V
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/common/G;->aky:Lcom/android/common/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    .prologue
    .line 73
    const/4 v0, 0x4

    if-ne p2, v0, :cond_c

    .line 74
    iget-object v0, p0, Lcom/android/common/G;->aky:Lcom/android/common/g;

    invoke-static {v0}, Lcom/android/common/g;->aoL(Lcom/android/common/g;)Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->finish()V

    .line 76
    :cond_c
    iget-object v0, p0, Lcom/android/common/G;->aky:Lcom/android/common/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/common/g;->aoM(Lcom/android/common/g;Z)Z

    .line 77
    const/4 v0, 0x1

    return v0
.end method
