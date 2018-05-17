.class Lcom/android/common/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/b/f;


# instance fields
.field final synthetic Vf:Lcom/android/common/e/c;


# direct methods
.method private constructor <init>(Lcom/android/common/e/c;)V
    .registers 2

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/common/e/d;->Vf:Lcom/android/common/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/e/c;Lcom/android/common/e/d;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/e/d;-><init>(Lcom/android/common/e/c;)V

    return-void
.end method

.method private ZB()V
    .registers 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/common/e/d;->Vf:Lcom/android/common/e/c;

    invoke-static {v0}, Lcom/android/common/e/c;->Zx(Lcom/android/common/e/c;)Lcom/android/common/appService/W;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 166
    iget-object v0, p0, Lcom/android/common/e/d;->Vf:Lcom/android/common/e/c;

    invoke-static {v0}, Lcom/android/common/e/c;->Zx(Lcom/android/common/e/c;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 167
    iget-object v0, p0, Lcom/android/common/e/d;->Vf:Lcom/android/common/e/c;

    invoke-static {v0}, Lcom/android/common/e/c;->Zx(Lcom/android/common/e/c;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agA()J

    move-result-wide v0

    .line 169
    iget-object v2, p0, Lcom/android/common/e/d;->Vf:Lcom/android/common/e/c;

    invoke-static {v2}, Lcom/android/common/e/c;->Zx(Lcom/android/common/e/c;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/common/appService/W;->qV(J)V

    .line 164
    :cond_2b
    return-void
.end method


# virtual methods
.method public bl(Landroid/net/Uri;Lcom/android/common/storagemanager/StorageResult$StorageResultType;)V
    .registers 7

    .prologue
    .line 139
    sget-object v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aai:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    if-ne p2, v0, :cond_8e

    .line 140
    const-string/jumbo v0, "JpegPictureCallback"

    const-string/jumbo v1, "storage success"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/common/e/d;->Vf:Lcom/android/common/e/c;

    invoke-static {v0}, Lcom/android/common/e/c;->ZA(Lcom/android/common/e/c;)I

    move-result v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v1

    if-eq v0, v1, :cond_1b

    .line 143
    :cond_1b
    iget-object v0, p0, Lcom/android/common/e/d;->Vf:Lcom/android/common/e/c;

    invoke-static {v0}, Lcom/android/common/e/c;->Zx(Lcom/android/common/e/c;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rl()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 145
    :try_start_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/common/e/d;->Vf:Lcom/android/common/e/c;

    invoke-static {v1}, Lcom/android/common/e/c;->Zz(Lcom/android/common/e/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/e/d;->Vf:Lcom/android/common/e/c;

    invoke-static {v1}, Lcom/android/common/e/c;->Zy(Lcom/android/common/e/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    const-string/jumbo v1, "JpegPictureCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/android/common/e/d;->Vf:Lcom/android/common/e/c;

    invoke-static {v1}, Lcom/android/common/e/c;->Zx(Lcom/android/common/e/c;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/appService/H;->mX(Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_71} :catch_75

    .line 161
    :cond_71
    :goto_71
    invoke-direct {p0}, Lcom/android/common/e/d;->ZB()V

    .line 138
    return-void

    .line 148
    :catch_75
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_71

    .line 154
    :cond_7a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_71

    .line 155
    iget-object v0, p0, Lcom/android/common/e/d;->Vf:Lcom/android/common/e/c;

    invoke-static {v0}, Lcom/android/common/e/c;->Zx(Lcom/android/common/e/c;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/common/h;->apj(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_71

    .line 159
    :cond_8e
    const-string/jumbo v0, "JpegPictureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "storage fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71
.end method
