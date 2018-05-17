.class final Lcom/android/camera/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/C;


# instance fields
.field final synthetic apq:Lcom/android/camera/a;


# direct methods
.method constructor <init>(Lcom/android/camera/a;)V
    .registers 2

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private aBJ(I)Lcom/android/common/appService/CameraMember;
    .registers 5

    .prologue
    .line 357
    if-ltz p1, :cond_38

    iget-object v0, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->aAf(Lcom/android/camera/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_38

    .line 358
    iget-object v0, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->aAf(Lcom/android/camera/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/c;

    iget-object v0, v0, Lcom/android/camera/c;->aoq:Lcom/android/common/appService/CameraMember;

    .line 362
    sget-object v1, Lcom/android/common/appService/CameraMember;->jv:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_37

    .line 363
    iget-object v0, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->aAi(Lcom/android/camera/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "scroll_switcher_seleleted_family"

    .line 364
    sget-object v2, Lcom/android/common/appService/CameraMember;->ju:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v2}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v2

    .line 363
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/common/appService/CameraMember;->md(I)Lcom/android/common/appService/CameraMember;

    move-result-object v0

    .line 366
    :cond_37
    return-object v0

    .line 360
    :cond_38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Index is illegal"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ys(I)V
    .registers 4

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->aAf(Lcom/android/camera/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/c;

    iget-object v0, v0, Lcom/android/camera/c;->aoq:Lcom/android/common/appService/CameraMember;

    .line 381
    sget-object v1, Lcom/android/common/appService/CameraMember;->jv:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_17

    .line 382
    iget-object v0, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-virtual {v0}, Lcom/android/camera/a;->axi()V

    .line 379
    :cond_17
    return-void
.end method

.method public yt()V
    .registers 1

    .prologue
    .line 347
    return-void
.end method

.method public yu(II)V
    .registers 14

    .prologue
    const/4 v10, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 303
    if-ne p1, p2, :cond_6

    .line 304
    return-void

    .line 306
    :cond_6
    iget-object v0, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-virtual {v0}, Lcom/android/camera/a;->azN()V

    .line 307
    iget-object v0, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->aAf(Lcom/android/camera/a;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v1}, Lcom/android/camera/a;->aAa(Lcom/android/camera/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/c;

    iget-object v6, v0, Lcom/android/camera/c;->aoq:Lcom/android/common/appService/CameraMember;

    .line 308
    sget-object v0, Lcom/android/common/appService/CameraMember;->jv:Lcom/android/common/appService/CameraMember;

    if-ne v6, v0, :cond_8c

    iget-object v0, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->azY(Lcom/android/camera/a;)Lcom/android/camera/cameraFamily/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/l;->axV()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 309
    const-wide/16 v0, 0xfa

    move-wide v2, v0

    .line 311
    :goto_32
    iget-object v0, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v0, p2}, Lcom/android/camera/a;->aAg(Lcom/android/camera/a;I)I

    .line 314
    iget-object v0, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->aAf(Lcom/android/camera/a;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v1}, Lcom/android/camera/a;->aAa(Lcom/android/camera/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/c;

    iget-object v0, v0, Lcom/android/camera/c;->aoq:Lcom/android/common/appService/CameraMember;

    .line 315
    invoke-direct {p0, p2}, Lcom/android/camera/n;->aBJ(I)Lcom/android/common/appService/CameraMember;

    move-result-object v1

    .line 316
    const-string/jumbo v7, "MemberScrollerManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onPageChange index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "; nextMember: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    sget-object v7, Lcom/android/common/appService/CameraMember;->jv:Lcom/android/common/appService/CameraMember;

    if-ne v0, v7, :cond_90

    .line 318
    iget-object v0, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-virtual {v0}, Lcom/android/camera/a;->azU()V

    .line 319
    iget-object v0, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->aAc(Lcom/android/camera/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 320
    iget-object v0, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v0, v1}, Lcom/android/camera/a;->aAn(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;)V

    .line 321
    return-void

    .line 310
    :cond_8c
    sget-wide v0, Lcom/android/common/g/g;->Xp:J

    move-wide v2, v0

    goto :goto_32

    .line 324
    :cond_90
    iget-object v0, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->aAc(Lcom/android/camera/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 325
    iget-object v0, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-virtual {v0, v5}, Lcom/android/camera/a;->azS(Z)V

    .line 328
    iget-object v0, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->azX(Lcom/android/camera/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amE()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v7, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-ne v0, v7, :cond_f3

    move v0, v4

    .line 329
    :goto_b1
    iget-object v7, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v7}, Lcom/android/camera/a;->azY(Lcom/android/camera/a;)Lcom/android/camera/cameraFamily/l;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/cameraFamily/l;->axW()V

    .line 330
    iget-object v7, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    iget-object v8, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v8}, Lcom/android/camera/a;->azX(Lcom/android/camera/a;)Lcom/android/common/appService/W;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v8

    invoke-static {v7, v1, v8}, Lcom/android/camera/a;->aAl(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;)Lcom/android/common/cameradevice/g;

    move-result-object v7

    .line 331
    iget-object v8, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    iget-object v9, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v9}, Lcom/android/camera/a;->azX(Lcom/android/camera/a;)Lcom/android/common/appService/W;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v9

    .line 332
    iget-object v10, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v10}, Lcom/android/camera/a;->azX(Lcom/android/camera/a;)Lcom/android/common/appService/W;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v10

    .line 331
    invoke-static {v8, v7, v9, v1, v10}, Lcom/android/camera/a;->aAk(Lcom/android/camera/a;Lcom/android/common/cameradevice/g;Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)Z

    move-result v8

    if-eqz v8, :cond_f5

    .line 333
    iget-object v2, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v2, v1, v7, v6}, Lcom/android/camera/a;->aAo(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;)V

    .line 341
    :goto_eb
    if-eqz v0, :cond_f2

    .line 342
    iget-object v0, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v0, v4}, Lcom/android/camera/a;->aAm(Lcom/android/camera/a;Z)V

    .line 302
    :cond_f2
    return-void

    :cond_f3
    move v0, v5

    .line 328
    goto :goto_b1

    .line 335
    :cond_f5
    iget-object v8, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v8, v1, v7, v6}, Lcom/android/camera/a;->aAo(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;)V

    .line 336
    iget-object v1, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v1}, Lcom/android/camera/a;->aAe(Lcom/android/camera/a;)Lcom/android/common/a/g;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/common/a/g;->ak(Z)V

    .line 337
    iget-object v1, p0, Lcom/android/camera/n;->apq:Lcom/android/camera/a;

    invoke-static {v1}, Lcom/android/camera/a;->aAc(Lcom/android/camera/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_eb
.end method

.method public yv()V
    .registers 1

    .prologue
    .line 351
    return-void
.end method

.method public yw(I)V
    .registers 2

    .prologue
    .line 374
    return-void
.end method

.method public yx(I)V
    .registers 2

    .prologue
    .line 370
    return-void
.end method
