.class public Lcom/loc/cv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/location/e;


# instance fields
.field a:Landroid/content/Context;

.field b:Z

.field bkR:Landroid/os/Messenger;

.field private volatile bkS:Z

.field private bkT:Z

.field private bkU:Z

.field bkV:Landroid/os/Messenger;

.field bkW:Lcom/loc/ci;

.field bkX:Lcom/loc/aa;

.field bkY:Ljava/util/Vector;

.field bkZ:Ljava/util/Vector;

.field private bla:I

.field private blb:Z

.field private blc:Z

.field private bld:Z

.field private ble:Z

.field private blf:Z

.field private blg:Z

.field private blh:Z

.field private bli:J

.field private blj:J

.field private blk:Lcom/loc/cd;

.field bll:Ljava/lang/Object;

.field blm:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field bln:J

.field private blo:Z

.field private blp:Ljava/lang/String;

.field blq:Lorg/json/JSONObject;

.field blr:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field bls:Ljava/net/ServerSocket;

.field blt:Z

.field blu:Ljava/net/Socket;

.field blv:Z

.field blw:Lcom/loc/bs;

.field d:Ljava/lang/String;

.field volatile j:Z

.field k:Z

.field n:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/loc/cv;->b:Z

    iput-object v3, p0, Lcom/loc/cv;->bkR:Landroid/os/Messenger;

    iput-boolean v2, p0, Lcom/loc/cv;->bkS:Z

    iput-boolean v2, p0, Lcom/loc/cv;->bkT:Z

    iput-boolean v2, p0, Lcom/loc/cv;->bkU:Z

    iput-object v3, p0, Lcom/loc/cv;->d:Ljava/lang/String;

    new-instance v0, Lcom/loc/ci;

    invoke-direct {v0, p0, p0}, Lcom/loc/ci;-><init>(Lcom/loc/cv;Lcom/loc/cv;)V

    iput-object v0, p0, Lcom/loc/cv;->bkW:Lcom/loc/ci;

    iput-object v3, p0, Lcom/loc/cv;->bkX:Lcom/loc/aa;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/loc/cv;->bkY:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/loc/cv;->bkZ:Ljava/util/Vector;

    iput v2, p0, Lcom/loc/cv;->bla:I

    iput-boolean v2, p0, Lcom/loc/cv;->blb:Z

    iput-boolean v2, p0, Lcom/loc/cv;->blc:Z

    iput-boolean v2, p0, Lcom/loc/cv;->bld:Z

    iput-boolean v2, p0, Lcom/loc/cv;->ble:Z

    iput-boolean v2, p0, Lcom/loc/cv;->blf:Z

    iput-boolean v2, p0, Lcom/loc/cv;->blg:Z

    iput-boolean v2, p0, Lcom/loc/cv;->blh:Z

    iput-wide v4, p0, Lcom/loc/cv;->bli:J

    iput-wide v4, p0, Lcom/loc/cv;->blj:J

    iput-object v3, p0, Lcom/loc/cv;->blk:Lcom/loc/cd;

    iput-boolean v2, p0, Lcom/loc/cv;->j:Z

    iput-boolean v2, p0, Lcom/loc/cv;->k:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/cv;->bll:Ljava/lang/Object;

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/cv;->n:J

    iput-wide v4, p0, Lcom/loc/cv;->bln:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/cv;->blo:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/cv;->blp:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    iput-object v3, p0, Lcom/loc/cv;->bls:Ljava/net/ServerSocket;

    iput-boolean v2, p0, Lcom/loc/cv;->blt:Z

    iput-object v3, p0, Lcom/loc/cv;->blu:Ljava/net/Socket;

    iput-boolean v2, p0, Lcom/loc/cv;->blv:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cv;->a:Landroid/content/Context;

    return-void
.end method

.method private a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 6

    :try_start_0
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHy(I)V

    invoke-virtual {v0, p2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHC(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "newInstanceAMapLoc"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic bGA(Lcom/loc/cv;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 2

    invoke-direct {p0}, Lcom/loc/cv;->f()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bGB(Lcom/loc/cv;)Lcom/loc/cd;
    .registers 2

    iget-object v0, p0, Lcom/loc/cv;->blk:Lcom/loc/cd;

    return-object v0
.end method

.method static synthetic bGC(Lcom/loc/cv;ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/loc/cv;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bGD(Lcom/loc/cv;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/cv;->blp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bGE(Lcom/loc/cv;)Z
    .registers 2

    invoke-direct {p0}, Lcom/loc/cv;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic bGF(Lcom/loc/cv;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/loc/cv;->bkU:Z

    return v0
.end method

.method static synthetic bGG(Lcom/loc/cv;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/cv;->h()V

    return-void
.end method

.method static synthetic bGH(Lcom/loc/cv;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/cv;->g()V

    return-void
.end method

.method static synthetic bGI(Lcom/loc/cv;Landroid/os/Messenger;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/loc/cv;->bGk(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic bGJ(Lcom/loc/cv;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/cv;->d()V

    return-void
.end method

.method static synthetic bGK(Lcom/loc/cv;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/cv;->l()V

    return-void
.end method

.method static synthetic bGL(Lcom/loc/cv;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/cv;->k()V

    return-void
.end method

.method static synthetic bGM(Lcom/loc/cv;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/loc/cv;->bkS:Z

    return v0
.end method

.method static synthetic bGN(Lcom/loc/cv;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/cv;->j()V

    return-void
.end method

.method static synthetic bGO(Lcom/loc/cv;Ljava/net/Socket;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/loc/cv;->bGm(Ljava/net/Socket;)V

    return-void
.end method

.method private bGk(Landroid/os/Messenger;)V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/loc/bR;->bDx()Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/loc/cv;->bkR:Landroid/os/Messenger;

    if-nez v0, :cond_3c

    :goto_a
    iget-wide v0, p0, Lcom/loc/cv;->blj:J

    invoke-static {v0, v1}, Lcom/loc/bR;->a(J)Z

    move-result v0

    if-nez v0, :cond_4c

    :cond_12
    :goto_12
    invoke-static {}, Lcom/loc/bR;->a()Z

    move-result v0

    if-nez v0, :cond_58

    :cond_18
    :goto_18
    invoke-static {}, Lcom/loc/bR;->c()Z

    move-result v0

    if-nez v0, :cond_66

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    if-eqz p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/loc/bR;->a(Z)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_6

    :catch_31
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "checkConfig"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_3c
    :try_start_3c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/cv;->bkR:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cv;->bkR:Landroid/os/Messenger;

    goto :goto_a

    :cond_4c
    iget-boolean v0, p0, Lcom/loc/cv;->bld:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/loc/cv;->bkW:Lcom/loc/ci;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/loc/ci;->sendEmptyMessage(I)Z

    goto :goto_12

    :cond_58
    iget-boolean v0, p0, Lcom/loc/cv;->blb:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/cv;->blb:Z

    iget-object v0, p0, Lcom/loc/cv;->bkW:Lcom/loc/ci;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/loc/ci;->sendEmptyMessage(I)Z

    goto :goto_18

    :cond_66
    invoke-static {}, Lcom/loc/bR;->d()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1e

    iget-boolean v0, p0, Lcom/loc/cv;->blc:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/cv;->blc:Z

    iget-object v0, p0, Lcom/loc/cv;->bkW:Lcom/loc/ci;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/loc/ci;->sendEmptyMessage(I)Z
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_7a} :catch_31

    goto :goto_1e
.end method

.method private bGl(Lorg/json/JSONObject;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/loc/cv;->blk:Lcom/loc/cd;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/loc/cv;->blk:Lcom/loc/cd;

    invoke-virtual {v0, p1}, Lcom/loc/cd;->bEs(Lorg/json/JSONObject;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_4

    :catch_b
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "setExtra"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private bGm(Ljava/net/Socket;)V
    .registers 14

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_7f

    const/16 v0, 0x7530

    :try_start_7
    const-string/jumbo v1, "jsonp1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_d} :catch_174

    :try_start_d
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v3, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1e} :catch_40c
    .catchall {:try_start_d .. :try_end_1e} :catchall_3fe

    :try_start_1e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_410
    .catchall {:try_start_1e .. :try_end_21} :catchall_226

    move-result-object v3

    if-nez v3, :cond_80

    :cond_24
    move-object v3, v1

    move v1, v0

    :goto_26
    :try_start_26
    sget v7, Lcom/loc/bx;->bhx:I

    sput v1, Lcom/loc/bx;->bhx:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v8, p0, Lcom/loc/cv;->blr:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-nez v8, :cond_18e

    :goto_32
    iget-object v0, p0, Lcom/loc/cv;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/X;->d(Landroid/content/Context;)Z
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_37} :catch_21c
    .catchall {:try_start_26 .. :try_end_37} :catchall_226

    move-result v0

    if-eqz v0, :cond_1a2

    :cond_3a
    :goto_3a
    move-object v0, v2

    :goto_3b
    if-eqz v0, :cond_269

    :cond_3d
    :goto_3d
    :try_start_3d
    new-instance v1, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v5, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string/jumbo v2, "HTTP/1.0 200 OK"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Content-Length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_78} :catch_174
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_78} :catch_347
    .catchall {:try_start_3d .. :try_end_78} :catchall_365

    :try_start_78
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7e} :catch_174
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7e} :catch_3b9

    :goto_7e
    return-void

    :cond_7f
    return-void

    :cond_80
    :try_start_80
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_24

    const-string/jumbo v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    array-length v7, v3

    if-le v7, v5, :cond_24

    const/4 v7, 0x1

    aget-object v3, v3, v7

    const-string/jumbo v7, "\\?"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    array-length v7, v3

    if-le v7, v5, :cond_24

    const/4 v7, 0x1

    aget-object v3, v3, v7

    const-string/jumbo v7, "&"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_24

    array-length v3, v7
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_ae} :catch_410
    .catchall {:try_start_80 .. :try_end_ae} :catchall_226

    if-lez v3, :cond_24

    move v3, v6

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    :goto_b4
    :try_start_b4
    array-length v8, v7

    if-lt v3, v8, :cond_ba

    move-object v3, v0

    goto/16 :goto_26

    :cond_ba
    aget-object v8, v7, v3

    const-string/jumbo v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_c8

    :cond_c5
    :goto_c5
    add-int/lit8 v3, v3, 0x1

    goto :goto_b4

    :cond_c8
    array-length v9, v8

    if-le v9, v5, :cond_c5

    const-string/jumbo v9, "to"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_180

    :goto_d7
    const-string/jumbo v9, "callback"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_189

    :goto_e3
    const-string/jumbo v9, "_"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c5

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_f5
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_f5} :catch_f6
    .catchall {:try_start_b4 .. :try_end_f5} :catchall_226

    goto :goto_c5

    :catch_f6
    move-exception v1

    move-object v3, v2

    move-object v2, v4

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    :goto_fc
    :try_start_fc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "({\'package\':\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/loc/cv;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\',\'error_code\':1,\'error\':\'params error\'})"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v4, "invoke part2"

    invoke-static {v0, v1, v4}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_131
    .catchall {:try_start_fc .. :try_end_131} :catchall_407

    :try_start_131
    new-instance v0, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string/jumbo v4, "UTF-8"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string/jumbo v1, "HTTP/1.0 200 OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Content-Length:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V
    :try_end_16c
    .catch Ljava/lang/Throwable; {:try_start_131 .. :try_end_16c} :catch_174
    .catch Ljava/lang/Throwable; {:try_start_131 .. :try_end_16c} :catch_36d
    .catchall {:try_start_131 .. :try_end_16c} :catchall_38b

    :try_start_16c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_172
    .catch Ljava/lang/Throwable; {:try_start_16c .. :try_end_172} :catch_174
    .catch Ljava/lang/Throwable; {:try_start_16c .. :try_end_172} :catch_3d0

    goto/16 :goto_7e

    :catch_174
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "invoke part5"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7e

    :cond_180
    const/4 v1, 0x1

    :try_start_181
    aget-object v1, v8, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_d7

    :cond_189
    const/4 v9, 0x1

    aget-object v0, v8, v9
    :try_end_18c
    .catch Ljava/lang/Throwable; {:try_start_181 .. :try_end_18c} :catch_f6
    .catchall {:try_start_181 .. :try_end_18c} :catchall_226

    goto/16 :goto_e3

    :cond_18e
    :try_start_18e
    iget-object v8, p0, Lcom/loc/cv;->blr:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v8}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHS()J
    :try_end_193
    .catch Ljava/lang/Throwable; {:try_start_18e .. :try_end_193} :catch_21c
    .catchall {:try_start_18e .. :try_end_193} :catchall_226

    move-result-wide v8

    sub-long/2addr v0, v8

    const-wide/16 v8, 0x1388

    cmp-long v0, v0, v8

    if-gtz v0, :cond_1a0

    move v0, v5

    :goto_19c
    if-nez v0, :cond_3a

    goto/16 :goto_32

    :cond_1a0
    move v0, v6

    goto :goto_19c

    :cond_1a2
    :try_start_1a2
    iget-object v0, p0, Lcom/loc/cv;->blk:Lcom/loc/cd;

    invoke-virtual {v0}, Lcom/loc/cd;->a()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cv;->blr:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/cv;->blr:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHv()I
    :try_end_1af
    .catch Ljava/lang/Throwable; {:try_start_1a2 .. :try_end_1af} :catch_20e
    .catchall {:try_start_1a2 .. :try_end_1af} :catchall_222

    move-result v0

    if-nez v0, :cond_1bf

    move-object v0, v2

    :goto_1b3
    :try_start_1b3
    sput v7, Lcom/loc/bx;->bhx:I
    :try_end_1b5
    .catch Ljava/lang/Throwable; {:try_start_1b3 .. :try_end_1b5} :catch_1b7
    .catchall {:try_start_1b3 .. :try_end_1b5} :catchall_402

    goto/16 :goto_3b

    :catch_1b7
    move-exception v1

    move-object v2, v4

    move-object v11, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v11

    goto/16 :goto_fc

    :cond_1bf
    :try_start_1bf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "({\'package\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/cv;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\',\'error_code\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/cv;->blr:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHv()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",\'error\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/cv;->blr:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_20c
    .catch Ljava/lang/Throwable; {:try_start_1bf .. :try_end_20c} :catch_20e
    .catchall {:try_start_1bf .. :try_end_20c} :catchall_222

    move-result-object v0

    goto :goto_1b3

    :catch_20e
    move-exception v0

    :try_start_20f
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v5, "invoke part1"

    invoke-static {v0, v1, v5}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_218
    .catchall {:try_start_20f .. :try_end_218} :catchall_222

    :try_start_218
    sput v7, Lcom/loc/bx;->bhx:I

    goto/16 :goto_3a

    :catch_21c
    move-exception v0

    move-object v1, v3

    move-object v3, v2

    move-object v2, v4

    goto/16 :goto_fc

    :catchall_222
    move-exception v0

    sput v7, Lcom/loc/bx;->bhx:I

    throw v0
    :try_end_226
    .catch Ljava/lang/Throwable; {:try_start_218 .. :try_end_226} :catch_21c
    .catchall {:try_start_218 .. :try_end_226} :catchall_226

    :catchall_226
    move-exception v0

    :goto_227
    :try_start_227
    new-instance v1, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const-string/jumbo v5, "UTF-8"

    const/4 v6, 0x1

    invoke-direct {v1, v3, v6, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string/jumbo v3, "HTTP/1.0 200 OK"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Content-Length:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V
    :try_end_262
    .catch Ljava/lang/Throwable; {:try_start_227 .. :try_end_262} :catch_174
    .catch Ljava/lang/Throwable; {:try_start_227 .. :try_end_262} :catch_393
    .catchall {:try_start_227 .. :try_end_262} :catchall_3b1

    :try_start_262
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_268
    .catch Ljava/lang/Throwable; {:try_start_262 .. :try_end_268} :catch_174
    .catch Ljava/lang/Throwable; {:try_start_262 .. :try_end_268} :catch_3e7

    :goto_268
    :try_start_268
    throw v0
    :try_end_269
    .catch Ljava/lang/Throwable; {:try_start_268 .. :try_end_269} :catch_174

    :cond_269
    :try_start_269
    iget-object v1, p0, Lcom/loc/cv;->blr:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v1, :cond_31a

    iget-object v1, p0, Lcom/loc/cv;->blr:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "&&"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "({\'package\':\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/loc/cv;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\',\'error_code\':0,\'error\':\'\',\'location\':{\'y\':"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHL()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ",\'precision\':"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getAccuracy()F

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ",\'x\':"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHI()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "},\'version_code\':\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "2.5.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\',\'version\':\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "2.5.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e4
    iget-object v1, p0, Lcom/loc/cv;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/X;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "({\'package\':\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/cv;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\',\'error_code\':36,\'error\':\'app is background\'})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3d

    :cond_31a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "({\'package\':\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/cv;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\',\'error_code\':8,\'error\':\'unknown error\'})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_345
    .catch Ljava/lang/Throwable; {:try_start_269 .. :try_end_345} :catch_1b7
    .catchall {:try_start_269 .. :try_end_345} :catchall_402

    move-result-object v0

    goto :goto_2e4

    :catch_347
    move-exception v0

    :try_start_348
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "invoke part3"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_351
    .catch Ljava/lang/Throwable; {:try_start_348 .. :try_end_351} :catch_174
    .catchall {:try_start_348 .. :try_end_351} :catchall_365

    :try_start_351
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_357
    .catch Ljava/lang/Throwable; {:try_start_351 .. :try_end_357} :catch_174
    .catch Ljava/lang/Throwable; {:try_start_351 .. :try_end_357} :catch_359

    goto/16 :goto_7e

    :catch_359
    move-exception v0

    :try_start_35a
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_363
    .catch Ljava/lang/Throwable; {:try_start_35a .. :try_end_363} :catch_174

    goto/16 :goto_7e

    :catchall_365
    move-exception v0

    :try_start_366
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_36c
    .catch Ljava/lang/Throwable; {:try_start_366 .. :try_end_36c} :catch_174
    .catch Ljava/lang/Throwable; {:try_start_366 .. :try_end_36c} :catch_3c5

    :goto_36c
    :try_start_36c
    throw v0
    :try_end_36d
    .catch Ljava/lang/Throwable; {:try_start_36c .. :try_end_36d} :catch_174

    :catch_36d
    move-exception v0

    :try_start_36e
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v3, "invoke part3"

    invoke-static {v0, v1, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_377
    .catch Ljava/lang/Throwable; {:try_start_36e .. :try_end_377} :catch_174
    .catchall {:try_start_36e .. :try_end_377} :catchall_38b

    :try_start_377
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_37d
    .catch Ljava/lang/Throwable; {:try_start_377 .. :try_end_37d} :catch_174
    .catch Ljava/lang/Throwable; {:try_start_377 .. :try_end_37d} :catch_37f

    goto/16 :goto_7e

    :catch_37f
    move-exception v0

    :try_start_380
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_389
    .catch Ljava/lang/Throwable; {:try_start_380 .. :try_end_389} :catch_174

    goto/16 :goto_7e

    :catchall_38b
    move-exception v0

    :try_start_38c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_392
    .catch Ljava/lang/Throwable; {:try_start_38c .. :try_end_392} :catch_174
    .catch Ljava/lang/Throwable; {:try_start_38c .. :try_end_392} :catch_3dc

    :goto_392
    :try_start_392
    throw v0
    :try_end_393
    .catch Ljava/lang/Throwable; {:try_start_392 .. :try_end_393} :catch_174

    :catch_393
    move-exception v1

    :try_start_394
    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "invoke part3"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39d
    .catch Ljava/lang/Throwable; {:try_start_394 .. :try_end_39d} :catch_174
    .catchall {:try_start_394 .. :try_end_39d} :catchall_3b1

    :try_start_39d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_3a3
    .catch Ljava/lang/Throwable; {:try_start_39d .. :try_end_3a3} :catch_174
    .catch Ljava/lang/Throwable; {:try_start_39d .. :try_end_3a3} :catch_3a5

    goto/16 :goto_268

    :catch_3a5
    move-exception v1

    :try_start_3a6
    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3af
    .catch Ljava/lang/Throwable; {:try_start_3a6 .. :try_end_3af} :catch_174

    goto/16 :goto_268

    :catchall_3b1
    move-exception v0

    :try_start_3b2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_3b8
    .catch Ljava/lang/Throwable; {:try_start_3b2 .. :try_end_3b8} :catch_174
    .catch Ljava/lang/Throwable; {:try_start_3b2 .. :try_end_3b8} :catch_3f3

    :goto_3b8
    :try_start_3b8
    throw v0

    :catch_3b9
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7e

    :catch_3c5
    move-exception v1

    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36c

    :catch_3d0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7e

    :catch_3dc
    move-exception v1

    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_392

    :catch_3e7
    move-exception v1

    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_268

    :catch_3f3
    move-exception v1

    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3fd
    .catch Ljava/lang/Throwable; {:try_start_3b8 .. :try_end_3fd} :catch_174

    goto :goto_3b8

    :catchall_3fe
    move-exception v0

    move-object v4, v2

    goto/16 :goto_227

    :catchall_402
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_227

    :catchall_407
    move-exception v0

    move-object v4, v2

    move-object v2, v3

    goto/16 :goto_227

    :catch_40c
    move-exception v0

    move-object v3, v2

    goto/16 :goto_fc

    :catch_410
    move-exception v0

    move-object v3, v2

    move-object v2, v4

    goto/16 :goto_fc
.end method

.method static synthetic bGn(Lcom/loc/cv;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/loc/cv;->bkU:Z

    return p1
.end method

.method static synthetic bGo(Lcom/loc/cv;Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/loc/cv;->bGl(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic bGp(Lcom/loc/cv;)I
    .registers 2

    iget v0, p0, Lcom/loc/cv;->bla:I

    return v0
.end method

.method static synthetic bGq(Lcom/loc/cv;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/loc/cv;->blf:Z

    return p1
.end method

.method static synthetic bGr(Lcom/loc/cv;)I
    .registers 3

    iget v0, p0, Lcom/loc/cv;->bla:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/loc/cv;->bla:I

    return v0
.end method

.method static synthetic bGs(Lcom/loc/cv;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/loc/cv;->blg:Z

    return p1
.end method

.method static synthetic bGt(Lcom/loc/cv;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/loc/cv;->ble:Z

    return p1
.end method

.method static synthetic bGu(Lcom/loc/cv;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/loc/cv;->bld:Z

    return p1
.end method

.method static synthetic bGv(Lcom/loc/cv;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/loc/cv;->blh:Z

    return p1
.end method

.method static synthetic bGw(Lcom/loc/cv;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/cv;->i()V

    return-void
.end method

.method static synthetic bGx(Lcom/loc/cv;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/loc/cv;->blp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic bGy(Lcom/loc/cv;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/loc/cv;->blo:Z

    return p1
.end method

.method static synthetic bGz(Lcom/loc/cv;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/loc/cv;->blo:Z

    return v0
.end method

.method private d()V
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/loc/cv;->i()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_15

    :goto_4
    iget-boolean v0, p0, Lcom/loc/cv;->ble:Z

    if-nez v0, :cond_20

    :goto_8
    iget-boolean v0, p0, Lcom/loc/cv;->blf:Z

    if-nez v0, :cond_30

    :goto_c
    iget-boolean v0, p0, Lcom/loc/cv;->blg:Z

    if-nez v0, :cond_38

    :goto_10
    iget-boolean v0, p0, Lcom/loc/cv;->blh:Z

    if-nez v0, :cond_40

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "doFusionLocaiton:init"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_20
    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/cv;->blj:J

    iput-boolean v3, p0, Lcom/loc/cv;->ble:Z

    iget-object v0, p0, Lcom/loc/cv;->blk:Lcom/loc/cd;

    invoke-virtual {v0}, Lcom/loc/cd;->b()V

    iput-boolean v3, p0, Lcom/loc/cv;->bld:Z

    goto :goto_8

    :cond_30
    iput-boolean v3, p0, Lcom/loc/cv;->blf:Z

    iget-object v0, p0, Lcom/loc/cv;->blk:Lcom/loc/cd;

    invoke-virtual {v0}, Lcom/loc/cd;->b()V

    goto :goto_c

    :cond_38
    iput-boolean v3, p0, Lcom/loc/cv;->blg:Z

    iget-object v0, p0, Lcom/loc/cv;->blk:Lcom/loc/cd;

    invoke-virtual {v0}, Lcom/loc/cd;->b()V

    goto :goto_10

    :cond_40
    iget-wide v0, p0, Lcom/loc/cv;->bli:J

    invoke-static {v0, v1}, Lcom/loc/bR;->bDz(J)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/loc/X;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/cv;->bli:J

    iput-boolean v3, p0, Lcom/loc/cv;->blh:Z

    iget-object v0, p0, Lcom/loc/cv;->blk:Lcom/loc/cd;

    invoke-virtual {v0}, Lcom/loc/cd;->b()V

    goto :goto_14
.end method

.method private e()Z
    .registers 3

    iget-object v1, p0, Lcom/loc/cv;->bll:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/loc/cv;->j:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private f()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 2

    iget-object v0, p0, Lcom/loc/cv;->blk:Lcom/loc/cd;

    invoke-virtual {v0}, Lcom/loc/cd;->a()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/loc/cv;->blk:Lcom/loc/cd;

    invoke-virtual {v0}, Lcom/loc/cd;->g()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private h()V
    .registers 4

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/cv;->bkT:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/cv;->bkT:Z

    iget-object v0, p0, Lcom/loc/cv;->blk:Lcom/loc/cd;

    iget-object v1, p0, Lcom/loc/cv;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/cd;->c(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_10

    :goto_e
    return-void

    :cond_f
    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "initAuth"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method private i()V
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    iget-boolean v0, p0, Lcom/loc/cv;->bkS:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/loc/cv;->j()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_a

    :goto_8
    return-void

    :cond_9
    return-void

    :catch_a
    move-exception v0

    iput-boolean v1, p0, Lcom/loc/cv;->blo:Z

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/cv;->blp:Ljava/lang/String;

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "init"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method private j()V
    .registers 7

    const/4 v5, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/loc/cv;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bx;->a(Landroid/content/Context;)V

    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    iget-object v0, p0, Lcom/loc/cv;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/M;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_eb

    :goto_18
    move-object v1, v0

    iget-object v0, p0, Lcom/loc/cv;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/M;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f0

    :goto_25
    iget-object v2, p0, Lcom/loc/cv;->blk:Lcom/loc/cd;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "api_serverSDK_130905##S128DF1572465B890OE3F7A13167KLEI##"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "##"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/loc/cd;->a(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_49} :catch_113

    :try_start_49
    iget-object v0, p0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v1, "key"

    iget-object v2, p0, Lcom/loc/cv;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/M;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v1, "User-Agent"

    const-string/jumbo v2, "AMAP_Location_SDK_Android 2.5.1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v1, "netloc"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v1, "gpsstatus"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v1, "nbssid"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v1, "reversegeo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f5

    :goto_8e
    iget-object v0, p0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v1, "isOffset"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_126

    :goto_99
    iget-object v0, p0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v1, "wait1stwifi"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v1, "autoup"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v1, "upcolmobile"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v1, "enablegetreq"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_131

    :goto_c3
    iget-object v0, p0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v1, "wifiactivescan"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13b

    :goto_ce
    iget-object v0, p0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v1, "isLocationCacheEnable"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_d6} :catch_ff
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_d6} :catch_113

    move-result v0

    if-eqz v0, :cond_145

    :goto_d9
    const/4 v0, 0x1

    :try_start_da
    iput-boolean v0, p0, Lcom/loc/cv;->bkS:Z

    iget-object v0, p0, Lcom/loc/cv;->blk:Lcom/loc/cd;

    iget-object v1, p0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/loc/cd;->bEs(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/loc/cv;->blk:Lcom/loc/cd;

    iget-object v1, p0, Lcom/loc/cv;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/cd;->b(Landroid/content/Context;)V

    :goto_ea
    return-void

    :cond_eb
    const-string/jumbo v0, "null"

    goto/16 :goto_18

    :cond_f0
    const-string/jumbo v0, "null"
    :try_end_f3
    .catch Ljava/lang/Throwable; {:try_start_da .. :try_end_f3} :catch_113

    goto/16 :goto_25

    :cond_f5
    :try_start_f5
    iget-object v0, p0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v1, "reversegeo"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_fe
    .catch Ljava/lang/Throwable; {:try_start_f5 .. :try_end_fe} :catch_ff
    .catch Ljava/lang/Throwable; {:try_start_f5 .. :try_end_fe} :catch_113

    goto :goto_8e

    :catch_ff
    move-exception v0

    :try_start_100
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/cv;->blp:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/loc/cv;->blo:Z

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "doInit part2"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_112
    .catch Ljava/lang/Throwable; {:try_start_100 .. :try_end_112} :catch_113

    goto :goto_d9

    :catch_113
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/cv;->blp:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/loc/cv;->blo:Z

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "doInit part3"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ea

    :cond_126
    :try_start_126
    iget-object v0, p0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v1, "isOffset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_99

    :cond_131
    iget-object v0, p0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v1, "enablegetreq"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_c3

    :cond_13b
    iget-object v0, p0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v1, "wifiactivescan"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_ce

    :cond_145
    iget-object v0, p0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v1, "isLocationCacheEnable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_14e
    .catch Ljava/lang/Throwable; {:try_start_126 .. :try_end_14e} :catch_ff
    .catch Ljava/lang/Throwable; {:try_start_126 .. :try_end_14e} :catch_113

    goto :goto_d9
.end method

.method private k()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/loc/cv;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/cv;->bkS:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/cv;->bkT:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/cv;->bkU:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/cv;->blb:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/cv;->blc:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/cv;->bla:I

    iget-object v0, p0, Lcom/loc/cv;->blk:Lcom/loc/cd;

    invoke-virtual {v0}, Lcom/loc/cd;->c()V

    iget-object v0, p0, Lcom/loc/cv;->bkY:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    invoke-static {}, Lcom/loc/bo;->a()V

    iget-boolean v0, p0, Lcom/loc/cv;->b:Z

    if-nez v0, :cond_2b

    :goto_26
    iget-object v0, p0, Lcom/loc/cv;->bkW:Lcom/loc/ci;

    if-nez v0, :cond_3e

    :goto_2a
    return-void

    :cond_2b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_26

    :catch_33
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "threadDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lcom/loc/cv;->bkW:Lcom/loc/ci;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/ci;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_44} :catch_33

    goto :goto_2a
.end method

.method private l()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/cv;->blk:Lcom/loc/cd;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/loc/cv;->blk:Lcom/loc/cd;

    invoke-virtual {v0}, Lcom/loc/cd;->i()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_4

    :catch_b
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "startColl"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/loc/cv;->bkW:Lcom/loc/ci;

    return-object v0
.end method

.method public declared-synchronized b()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/loc/cv;->blv:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3} :catch_17
    .catchall {:try_start_1 .. :try_end_3} :catchall_22

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Lcom/loc/bs;

    invoke-direct {v0, p0}, Lcom/loc/bs;-><init>(Lcom/loc/cv;)V

    iput-object v0, p0, Lcom/loc/cv;->blw:Lcom/loc/bs;

    iget-object v0, p0, Lcom/loc/cv;->blw:Lcom/loc/bs;

    invoke-virtual {v0}, Lcom/loc/bs;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/cv;->blv:Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_16} :catch_17
    .catchall {:try_start_7 .. :try_end_16} :catchall_22

    goto :goto_5

    :catch_17
    move-exception v0

    :try_start_18
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "startSocket"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_22

    goto :goto_5

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/loc/cv;->bls:Ljava/net/ServerSocket;

    if-nez v0, :cond_17

    :goto_5
    iget-object v0, p0, Lcom/loc/cv;->blu:Ljava/net/Socket;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_7} :catch_1d
    .catchall {:try_start_1 .. :try_end_7} :catchall_28

    if-nez v0, :cond_2b

    :goto_9
    const/4 v0, 0x0

    :try_start_a
    iput-object v0, p0, Lcom/loc/cv;->bls:Ljava/net/ServerSocket;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cv;->blw:Lcom/loc/bs;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/cv;->blv:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/cv;->blt:Z
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_28

    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/loc/cv;->bls:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1c} :catch_1d
    .catchall {:try_start_17 .. :try_end_1c} :catchall_28

    goto :goto_5

    :catch_1d
    move-exception v0

    :try_start_1e
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "stopScocket"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_28

    goto :goto_9

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/loc/cv;->blu:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_30} :catch_1d
    .catchall {:try_start_2b .. :try_end_30} :catchall_28

    goto :goto_9
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    const-string/jumbo v0, "apiKey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    :goto_d
    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sha1AndPackage"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/loc/M;->a(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/loc/M;->b(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/loc/cv;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/loc/cv;->bkV:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/loc/cv;->bkV:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_33
    invoke-static {v0}, Lcom/loc/ae;->a(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public onCreate()V
    .registers 4

    :try_start_0
    new-instance v0, Lcom/loc/cd;

    invoke-direct {v0}, Lcom/loc/cd;-><init>()V

    iput-object v0, p0, Lcom/loc/cv;->blk:Lcom/loc/cd;

    iget-object v0, p0, Lcom/loc/cv;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cv;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/cv;->j:Z

    new-instance v0, Lcom/loc/aa;

    invoke-direct {v0, p0}, Lcom/loc/aa;-><init>(Lcom/loc/cv;)V

    iput-object v0, p0, Lcom/loc/cv;->bkX:Lcom/loc/aa;

    iget-object v0, p0, Lcom/loc/cv;->bkX:Lcom/loc/aa;

    const-string/jumbo v1, "serviceThread"

    invoke-virtual {v0, v1}, Lcom/loc/aa;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/cv;->bkX:Lcom/loc/aa;

    invoke-virtual {v0}, Lcom/loc/aa;->start()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a
.end method

.method public onDestroy()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/loc/cv;->bll:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_10

    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/loc/cv;->j:Z

    iget-object v0, p0, Lcom/loc/cv;->bll:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    :goto_c
    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    :try_start_f
    throw v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_10} :catch_10

    :catch_10
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method
