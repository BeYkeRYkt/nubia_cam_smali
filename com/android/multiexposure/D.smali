.class final Lcom/android/multiexposure/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/K;


# instance fields
.field final synthetic arF:Lcom/android/multiexposure/o;


# direct methods
.method constructor <init>(Lcom/android/multiexposure/o;)V
    .registers 2

    .prologue
    .line 953
    iput-object p1, p0, Lcom/android/multiexposure/D;->arF:Lcom/android/multiexposure/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Am(Z)V
    .registers 5

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/multiexposure/D;->arF:Lcom/android/multiexposure/o;

    invoke-static {v0, p1}, Lcom/android/multiexposure/o;->aDs(Lcom/android/multiexposure/o;Z)Z

    .line 958
    const-string/jumbo v0, "MultiExposureFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isShowSeekbar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/multiexposure/D;->arF:Lcom/android/multiexposure/o;

    invoke-static {v2}, Lcom/android/multiexposure/o;->aDk(Lcom/android/multiexposure/o;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/android/multiexposure/D;->arF:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDk(Lcom/android/multiexposure/o;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 960
    iget-object v0, p0, Lcom/android/multiexposure/D;->arF:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDm(Lcom/android/multiexposure/o;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 956
    :goto_39
    return-void

    .line 962
    :cond_3a
    iget-object v0, p0, Lcom/android/multiexposure/D;->arF:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDm(Lcom/android/multiexposure/o;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_39
.end method
