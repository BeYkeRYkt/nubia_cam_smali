.class final Lcom/android/camera/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic apM:Lcom/android/camera/j;


# direct methods
.method constructor <init>(Lcom/android/camera/j;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/camera/B;->apM:Lcom/android/camera/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 102
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 103
    iget-object v0, p0, Lcom/android/camera/B;->apM:Lcom/android/camera/j;

    iget-object v1, p0, Lcom/android/camera/B;->apM:Lcom/android/camera/j;

    invoke-static {v1}, Lcom/android/camera/j;->aBH(Lcom/android/camera/j;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/j;->aBI(Lcom/android/camera/j;I)V

    .line 100
    return-void
.end method
