.class final Lcom/android/video/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aIN:Lcom/android/video/n;


# direct methods
.method constructor <init>(Lcom/android/video/n;)V
    .registers 2

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/video/x;->aIN:Lcom/android/video/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/video/x;->aIN:Lcom/android/video/n;

    invoke-virtual {v0}, Lcom/android/video/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 342
    return-void
.end method
