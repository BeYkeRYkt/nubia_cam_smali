.class final Lcom/android/panorama/PanoramaMemberConfig$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/panorama/l;


# direct methods
.method constructor <init>(Lcom/android/panorama/l;)V
    .registers 3

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/panorama/PanoramaMemberConfig$1;->this$0:Lcom/android/panorama/l;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    const v0, 0x7f080008

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/panorama/PanoramaMemberConfig$1;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method
