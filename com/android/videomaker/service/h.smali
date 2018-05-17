.class final Lcom/android/videomaker/service/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/videomaker/b/d;


# instance fields
.field final synthetic aKy:Lcom/android/videomaker/service/f;

.field final synthetic aKz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/videomaker/service/f;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 640
    iput-object p1, p0, Lcom/android/videomaker/service/h;->aKy:Lcom/android/videomaker/service/f;

    iput-object p2, p0, Lcom/android/videomaker/service/h;->aKz:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aYY(Lcom/android/videomaker/b/b;I)V
    .registers 6

    .prologue
    .line 646
    invoke-static {}, Lcom/android/videomaker/service/MakerService;->aZC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videomaker/service/c;

    .line 647
    iget-object v2, p0, Lcom/android/videomaker/service/h;->aKz:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Lcom/android/videomaker/service/c;->aZS(Ljava/lang/String;I)V

    goto :goto_8

    .line 644
    :cond_1a
    return-void
.end method
