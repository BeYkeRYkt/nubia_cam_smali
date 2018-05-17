.class final Lcom/android/multiexposure/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic arE:Lcom/android/multiexposure/o;


# direct methods
.method constructor <init>(Lcom/android/multiexposure/o;)V
    .registers 2

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/multiexposure/C;->arE:Lcom/android/multiexposure/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/multiexposure/C;->arE:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDC(Lcom/android/multiexposure/o;)V

    .line 644
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 642
    return-void
.end method
