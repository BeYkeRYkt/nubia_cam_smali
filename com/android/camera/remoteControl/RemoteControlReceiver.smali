.class public Lcom/android/camera/remoteControl/RemoteControlReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private amI:Ljava/util/List;

.field private amJ:Landroid/content/Context;

.field private amK:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/remoteControl/RemoteControlReceiver;->amI:Ljava/util/List;

    .line 22
    return-void
.end method

.method private ayl(Ljava/io/InputStream;)V
    .registers 7

    .prologue
    .line 56
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 59
    :cond_a
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5b

    .line 60
    const-string/jumbo v0, "RemoteControlReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " intent ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/android/camera/remoteControl/RemoteControlReceiver;->amI:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_30
    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/remoteControl/b;

    .line 62
    iget-object v4, v0, Lcom/android/camera/remoteControl/b;->amM:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 63
    iget-object v4, p0, Lcom/android/camera/remoteControl/RemoteControlReceiver;->amJ:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/camera/remoteControl/b;->ayp(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_49} :catch_4a
    .catchall {:try_start_a .. :try_end_49} :catchall_69

    goto :goto_30

    .line 67
    :catch_4a
    move-exception v0

    .line 68
    :try_start_4b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    const-string/jumbo v0, "RemoteControlReceiver"

    const-string/jumbo v1, " readLine IOException"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_69

    .line 72
    :try_start_57
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_64

    .line 55
    :goto_5a
    return-void

    .line 72
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_5a

    .line 73
    :catch_5f
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5a

    .line 73
    :catch_64
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5a

    .line 70
    :catchall_69
    move-exception v0

    .line 72
    :try_start_6a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    .line 70
    :goto_6d
    throw v0

    .line 73
    :catch_6e
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6d
.end method

.method private aym()V
    .registers 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/remoteControl/RemoteControlReceiver;->amI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    iget-object v0, p0, Lcom/android/camera/remoteControl/RemoteControlReceiver;->amI:Ljava/util/List;

    new-instance v1, Lcom/android/camera/remoteControl/a;

    const-string/jumbo v2, "clear_user_data"

    invoke-direct {v1, v2}, Lcom/android/camera/remoteControl/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/android/camera/remoteControl/RemoteControlReceiver;->amI:Ljava/util/List;

    new-instance v1, Lcom/android/camera/remoteControl/c;

    const-string/jumbo v2, "update_camera_family_data"

    invoke-direct {v1, v2}, Lcom/android/camera/remoteControl/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/camera/remoteControl/RemoteControlReceiver;->amJ:Landroid/content/Context;

    .line 35
    const-string/jumbo v0, "uri"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/remoteControl/RemoteControlReceiver;->amK:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "RemoteControlReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Receiver onReceive uri is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/remoteControl/RemoteControlReceiver;->amK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/android/camera/remoteControl/RemoteControlReceiver;->aym()V

    .line 40
    :try_start_2a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/remoteControl/RemoteControlReceiver;->amK:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Lcom/android/camera/remoteControl/RemoteControlReceiver;->ayl(Ljava/io/InputStream;)V
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_3b} :catch_3c

    .line 33
    :goto_3b
    return-void

    .line 42
    :catch_3c
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3b
.end method
