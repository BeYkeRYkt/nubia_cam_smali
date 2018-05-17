.class final Lcom/android/common/n/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic abC:Lcom/android/common/n/a;


# direct methods
.method constructor <init>(Lcom/android/common/n/a;)V
    .registers 2

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/common/n/e;->abC:Lcom/android/common/n/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .prologue
    .line 280
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 279
    return-void
.end method
