.class final Lcom/android/clone/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aTR:Lcom/android/clone/k;


# direct methods
.method constructor <init>(Lcom/android/clone/k;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/clone/t;->aTR:Lcom/android/clone/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/clone/t;->aTR:Lcom/android/clone/k;

    invoke-static {v0}, Lcom/android/clone/k;->bla(Lcom/android/clone/k;)Lcom/android/common/ui/E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/E;->cancel()V

    .line 60
    return-void
.end method
