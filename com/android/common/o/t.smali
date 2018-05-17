.class final Lcom/android/common/o/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aev:Lcom/android/common/o/a;


# direct methods
.method constructor <init>(Lcom/android/common/o/a;)V
    .registers 2

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/common/o/t;->aev:Lcom/android/common/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .prologue
    .line 431
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 430
    return-void
.end method
