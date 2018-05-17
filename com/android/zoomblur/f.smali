.class final Lcom/android/zoomblur/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/M;


# instance fields
.field final synthetic aGq:Lcom/android/zoomblur/d;


# direct methods
.method constructor <init>(Lcom/android/zoomblur/d;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/zoomblur/f;->aGq:Lcom/android/zoomblur/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AJ(I)V
    .registers 5

    .prologue
    .line 76
    const-string/jumbo v0, "ZoomBlurFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b;->bvx(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/android/zoomblur/f;->aGq:Lcom/android/zoomblur/d;

    invoke-static {v0, p1}, Lcom/android/zoomblur/d;->aVb(Lcom/android/zoomblur/d;I)V

    .line 75
    return-void
.end method
