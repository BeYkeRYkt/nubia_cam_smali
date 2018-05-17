.class final Lcom/android/video/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/u;


# instance fields
.field final synthetic aIQ:Lcom/android/video/n;


# direct methods
.method constructor <init>(Lcom/android/video/n;)V
    .registers 2

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/android/video/A;->aIQ:Lcom/android/video/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lE()V
    .registers 2

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/video/A;->aIQ:Lcom/android/video/n;

    invoke-static {v0}, Lcom/android/video/n;->aXK(Lcom/android/video/n;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1044
    :cond_9
    iget-object v0, p0, Lcom/android/video/A;->aIQ:Lcom/android/video/n;

    invoke-virtual {v0}, Lcom/android/video/n;->aWV()V

    .line 1042
    return-void
.end method

.method public lF()V
    .registers 7

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/video/A;->aIQ:Lcom/android/video/n;

    invoke-static {v0}, Lcom/android/video/n;->aXK(Lcom/android/video/n;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1038
    :cond_9
    iget-object v0, p0, Lcom/android/video/A;->aIQ:Lcom/android/video/n;

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0xc8

    const/4 v1, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/video/n;->aXS(Lcom/android/video/n;ZJJ)V

    .line 1036
    return-void
.end method

.method public lG()V
    .registers 7

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/video/A;->aIQ:Lcom/android/video/n;

    invoke-static {v0}, Lcom/android/video/n;->aXK(Lcom/android/video/n;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1024
    :cond_9
    iget-object v0, p0, Lcom/android/video/A;->aIQ:Lcom/android/video/n;

    const-wide/16 v2, 0x64

    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/video/n;->aXR(Lcom/android/video/n;ZJJ)V

    .line 1022
    return-void
.end method
