.class final Lcom/android/pretty/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aFj:Lcom/android/pretty/j;


# direct methods
.method constructor <init>(Lcom/android/pretty/j;)V
    .registers 2

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/pretty/C;->aFj:Lcom/android/pretty/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/pretty/C;->aFj:Lcom/android/pretty/j;

    invoke-static {v0}, Lcom/android/pretty/j;->aSN(Lcom/android/pretty/j;)Lcom/android/pretty/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/pretty/a;->aQP(Z)V

    .line 276
    return-void
.end method
