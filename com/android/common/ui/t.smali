.class Lcom/android/common/ui/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic sh:Lcom/android/common/ui/ZtemtShutterButton;


# direct methods
.method private constructor <init>(Lcom/android/common/ui/ZtemtShutterButton;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/common/ui/t;->sh:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/ui/ZtemtShutterButton;Lcom/android/common/ui/t;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/ui/t;-><init>(Lcom/android/common/ui/ZtemtShutterButton;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/common/ui/t;->sh:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-static {v0}, Lcom/android/common/ui/ZtemtShutterButton;->xd(Lcom/android/common/ui/ZtemtShutterButton;)Lcom/android/common/ui/u;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 56
    iget-object v0, p0, Lcom/android/common/ui/t;->sh:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-static {v0}, Lcom/android/common/ui/ZtemtShutterButton;->xd(Lcom/android/common/ui/ZtemtShutterButton;)Lcom/android/common/ui/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/ui/u;->xh()V

    .line 57
    const/4 v0, 0x1

    return v0

    .line 59
    :cond_13
    const/4 v0, 0x0

    return v0
.end method
