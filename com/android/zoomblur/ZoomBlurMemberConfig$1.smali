.class final Lcom/android/zoomblur/ZoomBlurMemberConfig$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/zoomblur/a;


# direct methods
.method constructor <init>(Lcom/android/zoomblur/a;)V
    .registers 3

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/zoomblur/ZoomBlurMemberConfig$1;->this$0:Lcom/android/zoomblur/a;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    const v0, 0x7f08000a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/zoomblur/ZoomBlurMemberConfig$1;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method
