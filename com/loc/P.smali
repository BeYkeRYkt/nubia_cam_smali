.class Lcom/loc/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic bej:Lcom/loc/bQ;


# direct methods
.method constructor <init>(Lcom/loc/bQ;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/P;->bej:Lcom/loc/bQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
