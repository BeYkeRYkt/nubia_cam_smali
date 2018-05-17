.class final Lcom/android/multiexposure/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic arD:Lcom/android/multiexposure/o;


# direct methods
.method constructor <init>(Lcom/android/multiexposure/o;)V
    .registers 2

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/multiexposure/B;->arD:Lcom/android/multiexposure/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/multiexposure/B;->arD:Lcom/android/multiexposure/o;

    invoke-virtual {v0}, Lcom/android/multiexposure/o;->aCF()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pE()V

    .line 633
    return-void
.end method
