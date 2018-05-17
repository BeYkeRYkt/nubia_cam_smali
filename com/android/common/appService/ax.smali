.class final Lcom/android/common/appService/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic nO:Lcom/android/common/appService/W;

.field final synthetic nP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/common/appService/W;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/android/common/appService/ax;->nO:Lcom/android/common/appService/W;

    iput-object p2, p0, Lcom/android/common/appService/ax;->nP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/android/common/appService/ax;->nO:Lcom/android/common/appService/W;

    iget-object v1, p0, Lcom/android/common/appService/ax;->nP:Ljava/lang/String;

    .line 1210
    iget-object v2, p0, Lcom/android/common/appService/ax;->nO:Lcom/android/common/appService/W;

    invoke-static {v2}, Lcom/android/common/appService/W;->tD(Lcom/android/common/appService/W;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1207
    const/4 v2, 0x1

    .line 1208
    const/16 v3, 0x11

    .line 1209
    const/4 v4, 0x0

    .line 1206
    invoke-virtual/range {v0 .. v5}, Lcom/android/common/appService/W;->qp(Ljava/lang/CharSequence;IIII)V

    .line 1205
    return-void
.end method
