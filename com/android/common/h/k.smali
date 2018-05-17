.class public Lcom/android/common/h/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Yn:Lcom/android/common/appService/H;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/H;)V
    .registers 3

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/h/k;->Yn:Lcom/android/common/appService/H;

    .line 14
    iput-object p1, p0, Lcom/android/common/h/k;->Yn:Lcom/android/common/appService/H;

    .line 13
    return-void
.end method


# virtual methods
.method public abX()V
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/common/h/k;->Yn:Lcom/android/common/appService/H;

    if-eqz v0, :cond_9

    .line 25
    iget-object v0, p0, Lcom/android/common/h/k;->Yn:Lcom/android/common/appService/H;

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nO()V

    .line 23
    :cond_9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 19
    invoke-static {p0}, Lcom/android/common/c/l;->hG(Lcom/android/common/h/k;)Lcom/android/common/c/a;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/c/e;->hr(Lcom/android/common/c/a;)V

    .line 18
    return-void
.end method
