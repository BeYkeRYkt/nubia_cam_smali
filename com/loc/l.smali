.class Lcom/loc/l;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field final synthetic bdm:Lcom/loc/bV;


# direct methods
.method private constructor <init>(Lcom/loc/bV;Ljava/io/OutputStream;)V
    .registers 3

    iput-object p1, p0, Lcom/loc/l;->bdm:Lcom/loc/bV;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/bV;Ljava/io/OutputStream;Lcom/loc/ax;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/loc/l;-><init>(Lcom/loc/bV;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/l;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v0, p0, Lcom/loc/l;->bdm:Lcom/loc/bV;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/loc/bV;->bDR(Lcom/loc/bV;Z)Z

    goto :goto_5
.end method

.method public flush()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/l;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v0, p0, Lcom/loc/l;->bdm:Lcom/loc/bV;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/loc/bV;->bDR(Lcom/loc/bV;Z)Z

    goto :goto_5
.end method

.method public write(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/l;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v0, p0, Lcom/loc/l;->bdm:Lcom/loc/bV;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/loc/bV;->bDR(Lcom/loc/bV;Z)Z

    goto :goto_5
.end method

.method public write([BII)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/loc/l;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v0, p0, Lcom/loc/l;->bdm:Lcom/loc/bV;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/loc/bV;->bDR(Lcom/loc/bV;Z)Z

    goto :goto_5
.end method
