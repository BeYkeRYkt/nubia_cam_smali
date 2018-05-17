.class final Lcom/android/clone/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aTP:Lcom/android/clone/a;


# direct methods
.method constructor <init>(Lcom/android/clone/a;)V
    .registers 2

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/android/clone/r;->aTP:Lcom/android/clone/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 1069
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1070
    iget-object v0, p0, Lcom/android/clone/r;->aTP:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjY(Lcom/android/clone/a;)Z

    .line 1068
    return-void
.end method
