.class final Lcom/android/common/appService/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/effects/f;


# instance fields
.field final synthetic no:Lcom/android/common/appService/t;


# direct methods
.method constructor <init>(Lcom/android/common/appService/t;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/common/appService/am;->no:Lcom/android/common/appService/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tO()V
    .registers 3

    .prologue
    const/16 v1, 0x68

    .line 156
    iget-object v0, p0, Lcom/android/common/appService/am;->no:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lw(Lcom/android/common/appService/t;)Lcom/android/common/appService/w;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/w;->removeMessages(I)V

    .line 157
    iget-object v0, p0, Lcom/android/common/appService/am;->no:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lw(Lcom/android/common/appService/t;)Lcom/android/common/appService/w;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/w;->sendEmptyMessage(I)Z

    .line 155
    return-void
.end method

.method public tP()V
    .registers 3

    .prologue
    const/16 v1, 0x67

    .line 150
    iget-object v0, p0, Lcom/android/common/appService/am;->no:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lw(Lcom/android/common/appService/t;)Lcom/android/common/appService/w;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/w;->removeMessages(I)V

    .line 151
    iget-object v0, p0, Lcom/android/common/appService/am;->no:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lw(Lcom/android/common/appService/t;)Lcom/android/common/appService/w;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/w;->sendEmptyMessage(I)Z

    .line 149
    return-void
.end method

.method public tQ()V
    .registers 3

    .prologue
    const/16 v1, 0x66

    .line 144
    iget-object v0, p0, Lcom/android/common/appService/am;->no:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lw(Lcom/android/common/appService/t;)Lcom/android/common/appService/w;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/w;->removeMessages(I)V

    .line 145
    iget-object v0, p0, Lcom/android/common/appService/am;->no:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lw(Lcom/android/common/appService/t;)Lcom/android/common/appService/w;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/w;->sendEmptyMessage(I)Z

    .line 143
    return-void
.end method

.method public tR()V
    .registers 4

    .prologue
    const/16 v2, 0x65

    .line 137
    iget-object v0, p0, Lcom/android/common/appService/am;->no:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->ls(Lcom/android/common/appService/t;)Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afm:Lcom/android/common/camerastate/UIState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amO(Lcom/android/common/camerastate/UIState;)V

    .line 138
    iget-object v0, p0, Lcom/android/common/appService/am;->no:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lw(Lcom/android/common/appService/t;)Lcom/android/common/appService/w;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/appService/w;->removeMessages(I)V

    .line 139
    iget-object v0, p0, Lcom/android/common/appService/am;->no:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lw(Lcom/android/common/appService/t;)Lcom/android/common/appService/w;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/appService/w;->sendEmptyMessage(I)Z

    .line 135
    return-void
.end method
