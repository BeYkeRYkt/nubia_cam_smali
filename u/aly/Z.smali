.class public Lu/aly/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const v0, 0x7fffffff

    .line 35
    sput v0, Lu/aly/Z;->a:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bUt(Lu/aly/dl;B)V
    .registers 3

    .prologue
    .line 60
    sget v0, Lu/aly/Z;->a:I

    invoke-static {p0, p1, v0}, Lu/aly/Z;->bUu(Lu/aly/dl;BI)V

    .line 61
    return-void
.end method

.method public static bUu(Lu/aly/dl;BI)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 73
    if-lez p2, :cond_7

    .line 76
    packed-switch p1, :pswitch_data_90

    .line 146
    :goto_6
    :pswitch_6
    return-void

    .line 74
    :cond_7
    new-instance v0, Lu/aly/cp;

    const-string/jumbo v1, "Maximum skip depth exceeded"

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :pswitch_10
    invoke-virtual {p0}, Lu/aly/dl;->bRi()Z

    goto :goto_6

    .line 82
    :pswitch_14
    invoke-virtual {p0}, Lu/aly/dl;->bRj()B

    goto :goto_6

    .line 86
    :pswitch_18
    invoke-virtual {p0}, Lu/aly/dl;->bRk()S

    goto :goto_6

    .line 90
    :pswitch_1c
    invoke-virtual {p0}, Lu/aly/dl;->bRl()I

    goto :goto_6

    .line 94
    :pswitch_20
    invoke-virtual {p0}, Lu/aly/dl;->bRm()J

    goto :goto_6

    .line 98
    :pswitch_24
    invoke-virtual {p0}, Lu/aly/dl;->bRn()D

    goto :goto_6

    .line 102
    :pswitch_28
    invoke-virtual {p0}, Lu/aly/dl;->bRq()Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 106
    :pswitch_2c
    invoke-virtual {p0}, Lu/aly/dl;->j()Lu/aly/aO;

    .line 108
    :goto_2f
    invoke-virtual {p0}, Lu/aly/dl;->l()Lu/aly/cB;

    move-result-object v0

    .line 109
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eqz v1, :cond_42

    .line 112
    iget-byte v0, v0, Lu/aly/cB;->b:B

    add-int/lit8 v1, p2, -0x1

    invoke-static {p0, v0, v1}, Lu/aly/Z;->bUu(Lu/aly/dl;BI)V

    .line 113
    invoke-virtual {p0}, Lu/aly/dl;->m()V

    goto :goto_2f

    .line 115
    :cond_42
    invoke-virtual {p0}, Lu/aly/dl;->k()V

    goto :goto_6

    .line 119
    :pswitch_46
    invoke-virtual {p0}, Lu/aly/dl;->n()Lu/aly/dh;

    move-result-object v1

    .line 120
    :goto_4a
    iget v2, v1, Lu/aly/dh;->c:I

    if-lt v0, v2, :cond_52

    .line 124
    invoke-virtual {p0}, Lu/aly/dl;->bRd()V

    goto :goto_6

    .line 121
    :cond_52
    iget-byte v2, v1, Lu/aly/dh;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lu/aly/Z;->bUu(Lu/aly/dl;BI)V

    .line 122
    iget-byte v2, v1, Lu/aly/dh;->b:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lu/aly/Z;->bUu(Lu/aly/dl;BI)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 128
    :pswitch_63
    invoke-virtual {p0}, Lu/aly/dl;->bRg()Lu/aly/m;

    move-result-object v1

    .line 129
    :goto_67
    iget v2, v1, Lu/aly/m;->b:I

    if-lt v0, v2, :cond_6f

    .line 132
    invoke-virtual {p0}, Lu/aly/dl;->bRh()V

    goto :goto_6

    .line 130
    :cond_6f
    iget-byte v2, v1, Lu/aly/m;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lu/aly/Z;->bUu(Lu/aly/dl;BI)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 136
    :pswitch_79
    invoke-virtual {p0}, Lu/aly/dl;->bRe()Lu/aly/bP;

    move-result-object v1

    .line 137
    :goto_7d
    iget v2, v1, Lu/aly/bP;->b:I

    if-lt v0, v2, :cond_85

    .line 140
    invoke-virtual {p0}, Lu/aly/dl;->bRf()V

    goto :goto_6

    .line 138
    :cond_85
    iget-byte v2, v1, Lu/aly/bP;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lu/aly/Z;->bUu(Lu/aly/dl;BI)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    .line 76
    nop

    :pswitch_data_90
    .packed-switch 0x2
        :pswitch_10
        :pswitch_14
        :pswitch_24
        :pswitch_6
        :pswitch_18
        :pswitch_6
        :pswitch_1c
        :pswitch_6
        :pswitch_20
        :pswitch_28
        :pswitch_2c
        :pswitch_46
        :pswitch_63
        :pswitch_79
    .end packed-switch
.end method
