.class final Lcom/android/dng/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic aBl:Lcom/android/dng/c;


# direct methods
.method constructor <init>(Lcom/android/dng/c;)V
    .registers 2

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/dng/w;->aBl:Lcom/android/dng/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    .prologue
    .line 270
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    new-instance v1, Lcom/android/dng/x;

    invoke-direct {v1, p0, p3}, Lcom/android/dng/x;-><init>(Lcom/android/dng/w;I)V

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->hr(Lcom/android/common/c/a;)V

    .line 269
    return-void
.end method
