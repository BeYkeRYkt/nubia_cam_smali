.class public Lcom/android/intervalometer/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final synthetic aQA:[I


# instance fields
.field private aQr:[B

.field private aQs:I

.field private aQt:Z

.field private aQu:Ljava/nio/ByteBuffer;

.field private aQv:Lcom/android/intervalometer/f;

.field private aQw:Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

.field private aQx:I

.field private aQy:Landroid/graphics/Matrix;

.field final synthetic aQz:Lcom/android/intervalometer/f;


# direct methods
.method public constructor <init>(Lcom/android/intervalometer/f;Lcom/android/intervalometer/f;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .registers 8

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/intervalometer/i;->aQz:Lcom/android/intervalometer/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/intervalometer/i;->aQt:Z

    .line 253
    iput-object p2, p0, Lcom/android/intervalometer/i;->aQv:Lcom/android/intervalometer/f;

    .line 254
    iput-object p3, p0, Lcom/android/intervalometer/i;->aQu:Ljava/nio/ByteBuffer;

    .line 255
    iput p4, p0, Lcom/android/intervalometer/i;->aQx:I

    .line 256
    iput p5, p0, Lcom/android/intervalometer/i;->aQs:I

    .line 257
    iput-object p6, p0, Lcom/android/intervalometer/i;->aQy:Landroid/graphics/Matrix;

    .line 258
    sget-object v0, Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;->aQp:Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

    iput-object v0, p0, Lcom/android/intervalometer/i;->aQw:Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/intervalometer/i;->aQt:Z

    .line 252
    return-void
.end method

.method public constructor <init>(Lcom/android/intervalometer/f;Lcom/android/intervalometer/f;[B)V
    .registers 5

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/intervalometer/i;->aQz:Lcom/android/intervalometer/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/intervalometer/i;->aQt:Z

    .line 263
    iput-object p2, p0, Lcom/android/intervalometer/i;->aQv:Lcom/android/intervalometer/f;

    .line 264
    invoke-virtual {p3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/intervalometer/i;->aQr:[B

    .line 265
    sget-object v0, Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;->aQq:Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

    iput-object v0, p0, Lcom/android/intervalometer/i;->aQw:Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/intervalometer/i;->aQt:Z

    .line 262
    return-void
.end method

.method private static synthetic bgZ()[I
    .registers 3

    sget-object v0, Lcom/android/intervalometer/i;->aQA:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/intervalometer/i;->aQA:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;->values()[Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;->aQp:Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

    invoke-virtual {v1}, Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_25

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;->aQq:Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

    invoke-virtual {v1}, Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_23

    :goto_20
    sput-object v0, Lcom/android/intervalometer/i;->aQA:[I

    return-object v0

    :catch_23
    move-exception v1

    goto :goto_20

    :catch_25
    move-exception v1

    goto :goto_17
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 271
    iget-boolean v0, p0, Lcom/android/intervalometer/i;->aQt:Z

    if-eqz v0, :cond_20

    .line 272
    invoke-static {}, Lcom/android/intervalometer/i;->bgZ()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/intervalometer/i;->aQw:Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

    invoke-virtual {v1}, Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    .line 284
    :goto_15
    iget-object v0, p0, Lcom/android/intervalometer/i;->aQz:Lcom/android/intervalometer/f;

    invoke-static {v0}, Lcom/android/intervalometer/f;->bgV(Lcom/android/intervalometer/f;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/intervalometer/f;->bgW(Lcom/android/intervalometer/f;I)I

    .line 270
    :cond_20
    return-void

    .line 274
    :pswitch_21
    iget-object v0, p0, Lcom/android/intervalometer/i;->aQv:Lcom/android/intervalometer/f;

    iget-object v1, p0, Lcom/android/intervalometer/i;->aQu:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/android/intervalometer/i;->aQx:I

    iget v3, p0, Lcom/android/intervalometer/i;->aQs:I

    iget-object v4, p0, Lcom/android/intervalometer/i;->aQy:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/intervalometer/f;->bgX(Lcom/android/intervalometer/f;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    .line 275
    iput-object v6, p0, Lcom/android/intervalometer/i;->aQu:Ljava/nio/ByteBuffer;

    .line 276
    iput-boolean v5, p0, Lcom/android/intervalometer/i;->aQt:Z

    goto :goto_15

    .line 279
    :pswitch_33
    iget-object v0, p0, Lcom/android/intervalometer/i;->aQv:Lcom/android/intervalometer/f;

    iget-object v1, p0, Lcom/android/intervalometer/i;->aQr:[B

    invoke-static {v0, v1}, Lcom/android/intervalometer/f;->bgY(Lcom/android/intervalometer/f;[B)V

    .line 280
    iput-object v6, p0, Lcom/android/intervalometer/i;->aQr:[B

    .line 281
    iput-boolean v5, p0, Lcom/android/intervalometer/i;->aQt:Z

    goto :goto_15

    .line 272
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_21
        :pswitch_33
    .end packed-switch
.end method
