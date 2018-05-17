.class Lcom/android/common/appService/Q;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# instance fields
.field final synthetic kJ:Lcom/android/common/appService/N;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/N;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/common/appService/Q;->kJ:Lcom/android/common/appService/N;

    .line 154
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 153
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/common/appService/Q;->kJ:Lcom/android/common/appService/N;

    invoke-static {v0, p1}, Lcom/android/common/appService/N;->op(Lcom/android/common/appService/N;I)I

    .line 160
    iget-object v0, p0, Lcom/android/common/appService/Q;->kJ:Lcom/android/common/appService/N;

    invoke-static {v0, p1}, Lcom/android/common/appService/N;->oq(Lcom/android/common/appService/N;I)V

    .line 165
    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    .line 166
    return-void

    .line 168
    :cond_e
    iget-object v0, p0, Lcom/android/common/appService/Q;->kJ:Lcom/android/common/appService/N;

    iget-object v1, p0, Lcom/android/common/appService/Q;->kJ:Lcom/android/common/appService/N;

    invoke-static {v1}, Lcom/android/common/appService/N;->on(Lcom/android/common/appService/N;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/common/h;->aqe(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/appService/N;->oo(Lcom/android/common/appService/N;I)I

    .line 169
    iget-object v0, p0, Lcom/android/common/appService/Q;->kJ:Lcom/android/common/appService/N;

    invoke-static {v0}, Lcom/android/common/appService/N;->or(Lcom/android/common/appService/N;)V

    .line 158
    return-void
.end method
