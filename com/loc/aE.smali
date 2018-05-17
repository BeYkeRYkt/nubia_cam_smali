.class Lcom/loc/aE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic bfU:Lcom/loc/bQ;


# direct methods
.method constructor <init>(Lcom/loc/bQ;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/aE;->bfU:Lcom/loc/bQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/loc/aE;->bfU:Lcom/loc/bQ;

    invoke-static {v0}, Lcom/loc/bQ;->bDk(Lcom/loc/bQ;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
