.class Lcom/android/common/exif/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Pk:Lcom/android/common/exif/o;


# direct methods
.method constructor <init>(Lcom/android/common/exif/o;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/common/exif/j;->Pk:Lcom/android/common/exif/o;

    .line 33
    return-void
.end method


# virtual methods
.method protected Pu(Ljava/io/InputStream;)Lcom/android/common/exif/a;
    .registers 7

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/common/exif/j;->Pk:Lcom/android/common/exif/o;

    invoke-static {p1, v0}, Lcom/android/common/exif/b;->OM(Ljava/io/InputStream;Lcom/android/common/exif/o;)Lcom/android/common/exif/b;

    move-result-object v1

    .line 47
    new-instance v2, Lcom/android/common/exif/a;

    invoke-virtual {v1}, Lcom/android/common/exif/b;->OA()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/common/exif/a;-><init>(Ljava/nio/ByteOrder;)V

    .line 50
    invoke-virtual {v1}, Lcom/android/common/exif/b;->OL()I

    move-result v0

    .line 51
    :goto_13
    const/4 v3, 0x5

    if-eq v0, v3, :cond_99

    .line 52
    packed-switch v0, :pswitch_data_9a

    .line 88
    :goto_19
    invoke-virtual {v1}, Lcom/android/common/exif/b;->OL()I

    move-result v0

    goto :goto_13

    .line 54
    :pswitch_1e
    new-instance v0, Lcom/android/common/exif/p;

    invoke-virtual {v1}, Lcom/android/common/exif/b;->OC()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/common/exif/p;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/common/exif/a;->Oi(Lcom/android/common/exif/p;)V

    goto :goto_19

    .line 57
    :pswitch_2b
    invoke-virtual {v1}, Lcom/android/common/exif/b;->OG()Lcom/android/common/exif/k;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/android/common/exif/k;->PK()Z

    move-result v3

    if-nez v3, :cond_39

    .line 59
    invoke-virtual {v1, v0}, Lcom/android/common/exif/b;->OZ(Lcom/android/common/exif/k;)V

    goto :goto_19

    .line 61
    :cond_39
    invoke-virtual {v0}, Lcom/android/common/exif/k;->Px()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/common/exif/p;->Ry(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    goto :goto_19

    .line 65
    :pswitch_45
    invoke-virtual {v1}, Lcom/android/common/exif/b;->OG()Lcom/android/common/exif/k;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/android/common/exif/k;->PA()S

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_53

    .line 67
    invoke-virtual {v1, v0}, Lcom/android/common/exif/b;->OP(Lcom/android/common/exif/k;)V

    .line 69
    :cond_53
    invoke-virtual {v0}, Lcom/android/common/exif/k;->Px()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/common/exif/p;->Ry(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    goto :goto_19

    .line 72
    :pswitch_5f
    invoke-virtual {v1}, Lcom/android/common/exif/b;->OB()I

    move-result v0

    new-array v0, v0, [B

    .line 73
    array-length v3, v0

    invoke-virtual {v1, v0}, Lcom/android/common/exif/b;->read([B)I

    move-result v4

    if-ne v3, v4, :cond_70

    .line 74
    invoke-virtual {v2, v0}, Lcom/android/common/exif/a;->Ow([B)V

    goto :goto_19

    .line 76
    :cond_70
    const-string/jumbo v0, "ExifReader"

    const-string/jumbo v3, "Failed to read the compressed thumbnail"

    invoke-static {v0, v3}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 80
    :pswitch_7a
    invoke-virtual {v1}, Lcom/android/common/exif/b;->OF()I

    move-result v0

    new-array v0, v0, [B

    .line 81
    array-length v3, v0

    invoke-virtual {v1, v0}, Lcom/android/common/exif/b;->read([B)I

    move-result v4

    if-ne v3, v4, :cond_8f

    .line 82
    invoke-virtual {v1}, Lcom/android/common/exif/b;->OE()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/android/common/exif/a;->Ox(I[B)V

    goto :goto_19

    .line 84
    :cond_8f
    const-string/jumbo v0, "ExifReader"

    const-string/jumbo v3, "Failed to read the strip bytes"

    invoke-static {v0, v3}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 90
    :cond_99
    return-object v2

    .line 52
    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_2b
        :pswitch_45
        :pswitch_5f
        :pswitch_7a
    .end packed-switch
.end method
