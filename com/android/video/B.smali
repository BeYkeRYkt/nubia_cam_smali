.class final Lcom/android/video/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/v;


# instance fields
.field aIR:Landroid/widget/Toast;

.field final synthetic aIS:Lcom/android/video/n;


# direct methods
.method constructor <init>(Lcom/android/video/n;)V
    .registers 2

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/android/video/B;->aIS:Lcom/android/video/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private aXY()V
    .registers 4

    .prologue
    const v2, 0x7f0a04c0

    .line 1061
    iget-object v0, p0, Lcom/android/video/B;->aIS:Lcom/android/video/n;

    invoke-static {v0}, Lcom/android/video/n;->aXJ(Lcom/android/video/n;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1062
    iget-object v0, p0, Lcom/android/video/B;->aIS:Lcom/android/video/n;

    invoke-virtual {v0}, Lcom/android/video/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/common/j;->aqr(Landroid/app/Activity;I)V

    .line 1060
    :goto_1c
    return-void

    .line 1065
    :cond_1d
    iget-object v0, p0, Lcom/android/video/B;->aIR:Landroid/widget/Toast;

    if-nez v0, :cond_2e

    .line 1066
    iget-object v0, p0, Lcom/android/video/B;->aIS:Lcom/android/video/n;

    invoke-virtual {v0}, Lcom/android/video/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1068
    const/4 v1, 0x0

    .line 1066
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/B;->aIR:Landroid/widget/Toast;

    .line 1070
    :cond_2e
    iget-object v0, p0, Lcom/android/video/B;->aIR:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1c
.end method


# virtual methods
.method public lH()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1051
    iget-object v0, p0, Lcom/android/video/B;->aIS:Lcom/android/video/n;

    invoke-static {v0}, Lcom/android/video/n;->aXK(Lcom/android/video/n;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1052
    return v1

    .line 1054
    :cond_a
    iget-object v0, p0, Lcom/android/video/B;->aIS:Lcom/android/video/n;

    invoke-static {v0}, Lcom/android/video/n;->aXO(Lcom/android/video/n;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1055
    invoke-direct {p0}, Lcom/android/video/B;->aXY()V

    .line 1056
    return v1

    .line 1058
    :cond_16
    const/4 v0, 0x0

    return v0
.end method
