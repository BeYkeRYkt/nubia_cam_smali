.class final Lcom/android/common/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic akX:Lcom/android/common/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 2

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/android/common/ad;->akX:Lcom/android/common/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/common/ad;->akX:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->auw()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1096
    iget-object v0, p0, Lcom/android/common/ad;->akX:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->ajj:Lcom/android/common/appService/H;

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nh()V

    .line 1097
    iget-object v0, p0, Lcom/android/common/ad;->akX:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asr()V

    .line 1094
    :cond_14
    return-void
.end method
