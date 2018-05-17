.class public Lcom/loc/am;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public bfm:I

.field public bfn:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public j:I

.field public k:I


# direct methods
.method protected constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/am;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/am;->b:Ljava/lang/String;

    iput v1, p0, Lcom/loc/am;->c:I

    iput v1, p0, Lcom/loc/am;->d:I

    iput v1, p0, Lcom/loc/am;->e:I

    iput v1, p0, Lcom/loc/am;->f:I

    iput v1, p0, Lcom/loc/am;->g:I

    iput v1, p0, Lcom/loc/am;->bfm:I

    iput v1, p0, Lcom/loc/am;->bfn:I

    const/16 v0, -0x71

    iput v0, p0, Lcom/loc/am;->j:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/loc/am;->k:I

    iput p1, p0, Lcom/loc/am;->k:I

    return-void
.end method


# virtual methods
.method public byl(Lcom/loc/am;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_a

    iget v0, p1, Lcom/loc/am;->k:I

    packed-switch v0, :pswitch_data_46

    return v2

    :cond_a
    return v2

    :pswitch_b
    iget v0, p0, Lcom/loc/am;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    iget v0, p1, Lcom/loc/am;->bfn:I

    iget v1, p0, Lcom/loc/am;->bfn:I

    if-eq v0, v1, :cond_18

    :cond_16
    return v2

    :cond_17
    return v2

    :cond_18
    iget v0, p1, Lcom/loc/am;->bfm:I

    iget v1, p0, Lcom/loc/am;->bfm:I

    if-ne v0, v1, :cond_16

    iget v0, p1, Lcom/loc/am;->g:I

    iget v1, p0, Lcom/loc/am;->g:I

    if-ne v0, v1, :cond_16

    return v3

    :pswitch_25
    iget v0, p0, Lcom/loc/am;->k:I

    if-ne v0, v3, :cond_30

    iget v0, p1, Lcom/loc/am;->c:I

    iget v1, p0, Lcom/loc/am;->c:I

    if-eq v0, v1, :cond_31

    :cond_2f
    return v2

    :cond_30
    return v2

    :cond_31
    iget v0, p1, Lcom/loc/am;->d:I

    iget v1, p0, Lcom/loc/am;->d:I

    if-ne v0, v1, :cond_2f

    iget-object v0, p1, Lcom/loc/am;->b:Ljava/lang/String;

    if-eqz v0, :cond_2f

    iget-object v0, p1, Lcom/loc/am;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/am;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    return v3

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_25
        :pswitch_b
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "unknown"

    iget v1, p0, Lcom/loc/am;->k:I

    packed-switch v1, :pswitch_data_52

    :goto_c
    return-object v0

    :pswitch_d
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "CDMA bid=%d, nid=%d, sid=%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/loc/am;->bfn:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/loc/am;->bfm:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/loc/am;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :pswitch_31
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "GSM lac=%d, cid=%d, mnc=%s"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/loc/am;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/loc/am;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/loc/am;->b:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_31
        :pswitch_d
    .end packed-switch
.end method
