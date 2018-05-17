.class final Lcom/android/camera/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic apQ:Lcom/android/camera/j;


# direct methods
.method constructor <init>(Lcom/android/camera/j;)V
    .registers 2

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/camera/F;->apQ:Lcom/android/camera/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/F;->apQ:Lcom/android/camera/j;

    invoke-static {v0}, Lcom/android/camera/j;->aBF(Lcom/android/camera/j;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 148
    return-void
.end method
