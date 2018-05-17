.class final Lcom/android/slowshutter/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ayl:Lcom/android/slowshutter/a;


# direct methods
.method constructor <init>(Lcom/android/slowshutter/a;)V
    .registers 2

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/slowshutter/g;->ayl:Lcom/android/slowshutter/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/slowshutter/g;->ayl:Lcom/android/slowshutter/a;

    invoke-static {v0}, Lcom/android/slowshutter/a;->aNa(Lcom/android/slowshutter/a;)Lcom/android/common/appService/z;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/z;->lL(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 153
    iget-object v0, p0, Lcom/android/slowshutter/g;->ayl:Lcom/android/slowshutter/a;

    invoke-static {v0}, Lcom/android/slowshutter/a;->aNc(Lcom/android/slowshutter/a;)V

    .line 151
    :cond_12
    return-void
.end method
