.class Lcom/android/camera/remoteControl/a;
.super Lcom/android/camera/remoteControl/b;
.source "SourceFile"


# instance fields
.field private amL:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/camera/remoteControl/b;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private ayn()V
    .registers 3

    .prologue
    .line 26
    const-string/jumbo v0, "ClearUserDataAction"

    const-string/jumbo v1, " clearApplicationUserData "

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/android/camera/remoteControl/a;->amL:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 30
    invoke-direct {p0, v1}, Lcom/android/camera/remoteControl/a;->ayo(Ljava/io/File;)Z

    .line 32
    :cond_21
    invoke-direct {p0}, Lcom/android/camera/remoteControl/a;->ayq()V

    .line 25
    return-void
.end method

.method private ayo(Ljava/io/File;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 36
    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 38
    :goto_e
    array-length v3, v2

    if-ge v0, v3, :cond_3c

    .line 39
    new-instance v3, Ljava/io/File;

    aget-object v4, v2, v0

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, v3}, Lcom/android/camera/remoteControl/a;->ayo(Ljava/io/File;)Z

    move-result v4

    .line 41
    if-nez v4, :cond_39

    .line 42
    const-string/jumbo v0, "ClearUserDataAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " delete file fail, file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return v1

    .line 38
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 48
    :cond_3c
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "databases"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 49
    const/4 v0, 0x1

    return v0

    .line 51
    :cond_4b
    const-string/jumbo v0, "ClearUserDataAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " delete dir : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method private ayq()V
    .registers 3

    .prologue
    .line 56
    const-string/jumbo v0, "ClearUserDataAction"

    const-string/jumbo v1, " updateCameraFamilyUserData "

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/android/camera/cameraFamily/e;->axu()Lcom/android/camera/cameraFamily/e;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/android/camera/remoteControl/a;->amL:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/camera/cameraFamily/e;->axx(Landroid/content/Context;)V

    .line 55
    return-void
.end method


# virtual methods
.method ayp(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/camera/remoteControl/a;->amL:Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Lcom/android/camera/remoteControl/a;->ayn()V

    .line 20
    return-void
.end method
