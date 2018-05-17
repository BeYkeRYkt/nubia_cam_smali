.class final Lcom/android/videomaker/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/b/b;


# instance fields
.field final synthetic aJX:Lcom/android/videomaker/b/b;


# direct methods
.method constructor <init>(Lcom/android/videomaker/b/b;)V
    .registers 2

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/videomaker/b/g;->aJX:Lcom/android/videomaker/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aYZ()V
    .registers 6

    .prologue
    .line 329
    const-string/jumbo v0, "videoGenerator"

    const-string/jumbo v1, "onComplete"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/android/videomaker/b/g;->aJX:Lcom/android/videomaker/b/b;

    invoke-static {v0}, Lcom/android/videomaker/b/b;->aYR(Lcom/android/videomaker/b/b;)Lcn/nubia/videogenerator/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/e;->stop()V

    .line 332
    :try_start_12
    iget-object v0, p0, Lcom/android/videomaker/b/g;->aJX:Lcom/android/videomaker/b/b;

    invoke-static {v0}, Lcom/android/videomaker/b/b;->aYS(Lcom/android/videomaker/b/b;)Lcn/nubia/videogenerator/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/c/a;->stop()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_2b

    .line 336
    :goto_1b
    iget-object v0, p0, Lcom/android/videomaker/b/g;->aJX:Lcom/android/videomaker/b/b;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/videomaker/b/b;->aYT(Lcom/android/videomaker/b/b;I)I

    .line 337
    iget-object v0, p0, Lcom/android/videomaker/b/g;->aJX:Lcom/android/videomaker/b/b;

    const-wide/16 v2, 0x64

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/videomaker/b/b;->aYV(Lcom/android/videomaker/b/b;IIJ)V

    .line 328
    return-void

    .line 333
    :catch_2b
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b
.end method
