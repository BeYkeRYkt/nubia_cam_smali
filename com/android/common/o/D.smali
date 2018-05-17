.class final Lcom/android/common/o/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic aeF:Lcom/android/common/o/e;


# direct methods
.method constructor <init>(Lcom/android/common/o/e;)V
    .registers 2

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/common/o/D;->aeF:Lcom/android/common/o/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 12

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/common/o/D;->aeF:Lcom/android/common/o/e;

    invoke-static {v0}, Lcom/android/common/o/e;->alf(Lcom/android/common/o/e;)I

    move-result v0

    .line 288
    iget-object v1, p0, Lcom/android/common/o/D;->aeF:Lcom/android/common/o/e;

    iget-object v1, v1, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->rF()I

    .line 299
    iget-object v1, p0, Lcom/android/common/o/D;->aeF:Lcom/android/common/o/e;

    iget-object v1, v1, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1, v0}, Lcom/android/common/appService/W;->rG(I)V

    .line 286
    return-void
.end method
