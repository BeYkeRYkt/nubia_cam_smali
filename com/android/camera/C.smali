.class final Lcom/android/camera/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic apN:Lcom/android/camera/j;


# direct methods
.method constructor <init>(Lcom/android/camera/j;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/camera/C;->apN:Lcom/android/camera/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/C;->apN:Lcom/android/camera/j;

    invoke-static {v0}, Lcom/android/camera/j;->aBF(Lcom/android/camera/j;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 110
    return-void
.end method
