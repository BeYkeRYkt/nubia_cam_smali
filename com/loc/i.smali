.class public Lcom/loc/i;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "\u672a\u77e5\u7684\u9519\u8bef"

    iput-object v0, p0, Lcom/loc/i;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/i;->b:I

    iput-object p1, p0, Lcom/loc/i;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/loc/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c1

    const-string/jumbo v0, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c6

    const-string/jumbo v0, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    const-string/jumbo v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    const-string/jumbo v0, "\u7a7a\u6307\u9488\u5f02\u5e38 - NullPointException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d5

    const-string/jumbo v0, "url\u5f02\u5e38 - MalformedURLException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_da

    const-string/jumbo v0, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df

    const-string/jumbo v0, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e4

    const-string/jumbo v0, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e9

    const-string/jumbo v0, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ee

    const-string/jumbo v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string/jumbo v0, "key\u9274\u6743\u5931\u8d25"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f8

    const-string/jumbo v0, "requeust is null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    const-string/jumbo v0, "request url is empty"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_101

    const-string/jumbo v0, "response is null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_105

    const-string/jumbo v0, "thread pool has exception"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_109

    const-string/jumbo v0, "sdk name is invalid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10d

    const-string/jumbo v0, "sdk info is null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_111

    const-string/jumbo v0, "sdk packages is null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_115

    const-string/jumbo v0, "\u7ebf\u7a0b\u6c60\u4e3a\u7a7a"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_119

    const-string/jumbo v0, "\u83b7\u53d6\u5bf9\u8c61\u9519\u8bef"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/i;->b:I

    :goto_c0
    return-void

    :cond_c1
    const/16 v0, 0x15

    iput v0, p0, Lcom/loc/i;->b:I

    goto :goto_c0

    :cond_c6
    const/16 v0, 0x16

    iput v0, p0, Lcom/loc/i;->b:I

    goto :goto_c0

    :cond_cb
    const/16 v0, 0x17

    iput v0, p0, Lcom/loc/i;->b:I

    goto :goto_c0

    :cond_d0
    const/16 v0, 0x18

    iput v0, p0, Lcom/loc/i;->b:I

    goto :goto_c0

    :cond_d5
    const/16 v0, 0x19

    iput v0, p0, Lcom/loc/i;->b:I

    goto :goto_c0

    :cond_da
    const/16 v0, 0x1a

    iput v0, p0, Lcom/loc/i;->b:I

    goto :goto_c0

    :cond_df
    const/16 v0, 0x1b

    iput v0, p0, Lcom/loc/i;->b:I

    goto :goto_c0

    :cond_e4
    const/16 v0, 0x1c

    iput v0, p0, Lcom/loc/i;->b:I

    goto :goto_c0

    :cond_e9
    const/16 v0, 0x1d

    iput v0, p0, Lcom/loc/i;->b:I

    goto :goto_c0

    :cond_ee
    const/16 v0, 0x1e

    iput v0, p0, Lcom/loc/i;->b:I

    goto :goto_c0

    :cond_f3
    const/16 v0, 0x1f

    iput v0, p0, Lcom/loc/i;->b:I

    goto :goto_c0

    :cond_f8
    const/16 v0, 0x20

    iput v0, p0, Lcom/loc/i;->b:I

    goto :goto_c0

    :cond_fd
    const/4 v0, 0x1

    iput v0, p0, Lcom/loc/i;->b:I

    goto :goto_c0

    :cond_101
    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/i;->b:I

    goto :goto_c0

    :cond_105
    const/4 v0, 0x3

    iput v0, p0, Lcom/loc/i;->b:I

    goto :goto_c0

    :cond_109
    const/4 v0, 0x4

    iput v0, p0, Lcom/loc/i;->b:I

    goto :goto_c0

    :cond_10d
    const/4 v0, 0x5

    iput v0, p0, Lcom/loc/i;->b:I

    goto :goto_c0

    :cond_111
    const/4 v0, 0x6

    iput v0, p0, Lcom/loc/i;->b:I

    goto :goto_c0

    :cond_115
    const/4 v0, 0x7

    iput v0, p0, Lcom/loc/i;->b:I

    goto :goto_c0

    :cond_119
    const/16 v0, 0x8

    iput v0, p0, Lcom/loc/i;->b:I

    goto :goto_c0

    :cond_11e
    const/16 v0, 0x65

    iput v0, p0, Lcom/loc/i;->b:I

    goto :goto_c0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/loc/i;->b:I

    return v0
.end method
