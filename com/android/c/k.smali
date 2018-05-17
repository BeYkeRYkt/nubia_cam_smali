.class final Lcom/android/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aBT:Lcom/android/c/i;


# direct methods
.method constructor <init>(Lcom/android/c/i;)V
    .registers 2

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/c/k;->aBT:Lcom/android/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/c/k;->aBT:Lcom/android/c/i;

    invoke-virtual {v0}, Lcom/android/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 203
    return-void
.end method
