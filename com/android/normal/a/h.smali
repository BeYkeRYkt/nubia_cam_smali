.class Lcom/android/normal/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bag:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private bah:Lcn/nubia/videogenerator/b/i;

.field private bai:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private baj:Lcom/android/normal/a/a;

.field final synthetic bak:Lcom/android/normal/a/b;

.field public mState:I


# direct methods
.method private constructor <init>(Lcom/android/normal/a/b;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 197
    iput-object p1, p0, Lcom/android/normal/a/h;->bak:Lcom/android/normal/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object v1, p0, Lcom/android/normal/a/h;->baj:Lcom/android/normal/a/a;

    .line 199
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/normal/a/h;->bai:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 200
    iput-object v1, p0, Lcom/android/normal/a/h;->bah:Lcn/nubia/videogenerator/b/i;

    .line 201
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/normal/a/h;->bag:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 202
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/normal/a/h;->mState:I

    .line 197
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/normal/a/b;Lcom/android/normal/a/h;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/normal/a/h;-><init>(Lcom/android/normal/a/b;)V

    return-void
.end method


# virtual methods
.method public bqS()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 3

    .prologue
    .line 272
    iget v0, p0, Lcom/android/normal/a/h;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    .line 273
    invoke-static {}, Lcom/android/normal/a/b;->bqu()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getPCMOutQueue from cacher when cacher is not turn on"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_f
    iget-object v0, p0, Lcom/android/normal/a/h;->bag:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public bqT()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 3

    .prologue
    .line 265
    iget v0, p0, Lcom/android/normal/a/h;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    .line 266
    invoke-static {}, Lcom/android/normal/a/b;->bqu()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getYUVOutQueue from cacher when cacher is not turn on"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_f
    iget-object v0, p0, Lcom/android/normal/a/h;->bai:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public bqU()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 261
    iget v1, p0, Lcom/android/normal/a/h;->mState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bqV()Z
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/normal/a/h;->bai:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bqW()V
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/normal/a/h;->baj:Lcom/android/normal/a/a;

    invoke-virtual {v0}, Lcom/android/normal/a/a;->bqe()V

    .line 286
    return-void
.end method

.method public bqX()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 230
    iget v0, p0, Lcom/android/normal/a/h;->mState:I

    if-ne v0, v2, :cond_11

    .line 231
    invoke-static {}, Lcom/android/normal/a/b;->bqu()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Live is already turn off"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void

    .line 234
    :cond_11
    iget-object v0, p0, Lcom/android/normal/a/h;->bak:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqC(Lcom/android/normal/a/b;)Lcom/android/normal/a/i;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 235
    iget-object v0, p0, Lcom/android/normal/a/h;->bak:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqC(Lcom/android/normal/a/b;)Lcom/android/normal/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/normal/a/i;->cancel()V

    .line 236
    iget-object v0, p0, Lcom/android/normal/a/h;->bak:Lcom/android/normal/a/b;

    invoke-static {v0, v1}, Lcom/android/normal/a/b;->bqM(Lcom/android/normal/a/b;Lcom/android/normal/a/i;)Lcom/android/normal/a/i;

    .line 238
    :cond_27
    iget-object v0, p0, Lcom/android/normal/a/h;->baj:Lcom/android/normal/a/a;

    if-eqz v0, :cond_32

    .line 239
    iget-object v0, p0, Lcom/android/normal/a/h;->baj:Lcom/android/normal/a/a;

    invoke-virtual {v0}, Lcom/android/normal/a/a;->stop()V

    .line 240
    iput-object v1, p0, Lcom/android/normal/a/h;->baj:Lcom/android/normal/a/a;

    .line 242
    :cond_32
    iget-object v0, p0, Lcom/android/normal/a/h;->bah:Lcn/nubia/videogenerator/b/i;

    if-eqz v0, :cond_3d

    .line 243
    iget-object v0, p0, Lcom/android/normal/a/h;->bah:Lcn/nubia/videogenerator/b/i;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/b/i;->stop()V

    .line 244
    iput-object v1, p0, Lcom/android/normal/a/h;->bah:Lcn/nubia/videogenerator/b/i;

    .line 246
    :cond_3d
    iget-object v0, p0, Lcom/android/normal/a/h;->bag:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_48

    .line 247
    iget-object v0, p0, Lcom/android/normal/a/h;->bag:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 248
    iput-object v1, p0, Lcom/android/normal/a/h;->bag:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 250
    :cond_48
    iget-object v0, p0, Lcom/android/normal/a/h;->bai:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_53

    .line 251
    iget-object v0, p0, Lcom/android/normal/a/h;->bai:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 252
    iput-object v1, p0, Lcom/android/normal/a/h;->bai:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 254
    :cond_53
    iget-object v0, p0, Lcom/android/normal/a/h;->bak:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqG(Lcom/android/normal/a/b;)Lcom/android/normal/a/g;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 255
    iget-object v0, p0, Lcom/android/normal/a/h;->bak:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqG(Lcom/android/normal/a/b;)Lcom/android/normal/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/normal/a/g;->bqR()V

    .line 257
    :cond_64
    iput v2, p0, Lcom/android/normal/a/h;->mState:I

    .line 229
    return-void
.end method

.method public bqY()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 205
    iget v0, p0, Lcom/android/normal/a/h;->mState:I

    if-ne v0, v4, :cond_10

    .line 206
    invoke-static {}, Lcom/android/normal/a/b;->bqu()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Live is already turn on"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void

    .line 209
    :cond_10
    invoke-static {}, Lcom/android/normal/a/b;->bqu()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "turn on"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v0, Lcom/android/normal/a/a;

    invoke-direct {v0}, Lcom/android/normal/a/a;-><init>()V

    iput-object v0, p0, Lcom/android/normal/a/h;->baj:Lcom/android/normal/a/a;

    .line 211
    iget-object v1, p0, Lcom/android/normal/a/h;->baj:Lcom/android/normal/a/a;

    iget-object v0, p0, Lcom/android/normal/a/h;->bak:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqy(Lcom/android/normal/a/b;)Lcom/android/common/cameradevice/j;

    move-result-object v2

    iget-object v0, p0, Lcom/android/normal/a/h;->bak:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqL(Lcom/android/normal/a/b;)Lcn/nubia/videogenerator/a/a;

    move-result-object v3

    .line 212
    iget-object v0, p0, Lcom/android/normal/a/h;->bak:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqz(Lcom/android/normal/a/b;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asl()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    .line 211
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/normal/a/a;->bqf(Lcom/android/common/cameradevice/j;Lcn/nubia/videogenerator/a/a;Lcom/android/common/appService/k;)V

    .line 213
    iget-object v0, p0, Lcom/android/normal/a/h;->baj:Lcom/android/normal/a/a;

    iget-object v1, p0, Lcom/android/normal/a/h;->bak:Lcom/android/normal/a/b;

    invoke-static {v1}, Lcom/android/normal/a/b;->bqA(Lcom/android/normal/a/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/normal/a/a;->bqg(I)V

    .line 214
    iget-object v0, p0, Lcom/android/normal/a/h;->baj:Lcom/android/normal/a/a;

    iget-object v1, p0, Lcom/android/normal/a/h;->bai:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Lcom/android/normal/a/a;->bqh(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 215
    iget-object v0, p0, Lcom/android/normal/a/h;->baj:Lcom/android/normal/a/a;

    invoke-virtual {v0}, Lcom/android/normal/a/a;->start()V

    .line 217
    new-instance v0, Lcn/nubia/videogenerator/b/i;

    invoke-direct {v0}, Lcn/nubia/videogenerator/b/i;-><init>()V

    iput-object v0, p0, Lcom/android/normal/a/h;->bah:Lcn/nubia/videogenerator/b/i;

    .line 218
    iget-object v0, p0, Lcom/android/normal/a/h;->bah:Lcn/nubia/videogenerator/b/i;

    iget-object v1, p0, Lcom/android/normal/a/h;->bak:Lcom/android/normal/a/b;

    invoke-static {v1}, Lcom/android/normal/a/b;->bqw(Lcom/android/normal/a/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/i;->bOG(I)V

    .line 219
    iget-object v0, p0, Lcom/android/normal/a/h;->bah:Lcn/nubia/videogenerator/b/i;

    iget-object v1, p0, Lcom/android/normal/a/h;->bak:Lcom/android/normal/a/b;

    invoke-static {v1}, Lcom/android/normal/a/b;->bqv(Lcom/android/normal/a/b;)Lcn/nubia/videogenerator/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/i;->bOH(Lcn/nubia/videogenerator/a/b;)V

    .line 220
    iget-object v0, p0, Lcom/android/normal/a/h;->bah:Lcn/nubia/videogenerator/b/i;

    iget-object v1, p0, Lcom/android/normal/a/h;->bak:Lcom/android/normal/a/b;

    invoke-static {v1}, Lcom/android/normal/a/b;->bqA(Lcom/android/normal/a/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/i;->bOI(I)V

    .line 221
    iget-object v0, p0, Lcom/android/normal/a/h;->bah:Lcn/nubia/videogenerator/b/i;

    iget-object v1, p0, Lcom/android/normal/a/h;->bag:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/i;->bOJ(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 222
    iget-object v0, p0, Lcom/android/normal/a/h;->bah:Lcn/nubia/videogenerator/b/i;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/b/i;->start()V

    .line 223
    iget-object v0, p0, Lcom/android/normal/a/h;->bak:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqH(Lcom/android/normal/a/b;)Lcom/android/normal/a/f;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 224
    iget-object v0, p0, Lcom/android/normal/a/h;->bak:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqH(Lcom/android/normal/a/b;)Lcom/android/normal/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/normal/a/f;->bqQ()V

    .line 226
    :cond_9e
    iput v4, p0, Lcom/android/normal/a/h;->mState:I

    .line 204
    return-void
.end method
