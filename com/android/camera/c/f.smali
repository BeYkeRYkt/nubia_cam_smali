.class final Lcom/android/camera/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic anV:Lcom/android/camera/c/b;

.field final synthetic anW:Lcom/android/camera/c/a;


# direct methods
.method constructor <init>(Lcom/android/camera/c/b;Lcom/android/camera/c/a;)V
    .registers 3

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/camera/c/f;->anV:Lcom/android/camera/c/b;

    iput-object p2, p0, Lcom/android/camera/c/f;->anW:Lcom/android/camera/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/c/f;->anV:Lcom/android/camera/c/b;

    invoke-static {v0}, Lcom/android/camera/c/b;->azm(Lcom/android/camera/c/b;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/c/f;->anW:Lcom/android/camera/c/a;

    .line 153
    const/4 v2, -0x2

    .line 152
    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 151
    return-void
.end method
