.class public Lu/aly/bj;
.super Lu/aly/ct;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;

.field private static final bxk:Lu/aly/aO;

.field private static final bxl:Lu/aly/cB;

.field private static final bxm:Lu/aly/cB;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v5, 0x3

    .line 33
    new-instance v0, Lu/aly/aO;

    const-string/jumbo v1, "PropertyValue"

    invoke-direct {v0, v1}, Lu/aly/aO;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bj;->bxk:Lu/aly/aO;

    .line 34
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "string_value"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v7, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bj;->bxl:Lu/aly/cB;

    .line 35
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "long_value"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v6, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bj;->bxm:Lu/aly/cB;

    .line 100
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bj$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 101
    sget-object v1, Lu/aly/bj$a;->btr:Lu/aly/bj$a;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "string_value"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v7}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lu/aly/bj$a;->bts:Lu/aly/bj$a;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "long_value"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v6}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bj;->a:Ljava/util/Map;

    const-class v0, Lu/aly/bj;

    .line 106
    sget-object v1, Lu/aly/bj;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->bUh(Ljava/lang/Class;Ljava/util/Map;)V

    .line 107
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 110
    invoke-direct {p0}, Lu/aly/ct;-><init>()V

    .line 111
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 275
    if-eqz p1, :cond_9

    .line 276
    sget-object v0, Lu/aly/bj$a;->btr:Lu/aly/bj$a;

    iput-object v0, p0, Lu/aly/bj;->c:Lu/aly/aF;

    .line 277
    iput-object p1, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    .line 278
    return-void

    .line 275
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method protected bUG(Lu/aly/dl;Lu/aly/cB;)Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-short v0, p2, Lu/aly/cB;->c:S

    invoke-static {v0}, Lu/aly/bj$a;->a(I)Lu/aly/bj$a;

    move-result-object v0

    .line 158
    if-nez v0, :cond_a

    .line 182
    return-object v2

    .line 159
    :cond_a
    sget-object v1, Lu/aly/bO;->a:[I

    invoke-virtual {v0}, Lu/aly/bj$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_48

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setField wasn\'t null, but didn\'t match any of the case statements!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :pswitch_1e
    iget-byte v0, p2, Lu/aly/cB;->b:B

    sget-object v1, Lu/aly/bj;->bxl:Lu/aly/cB;

    iget-byte v1, v1, Lu/aly/cB;->b:B

    if-eq v0, v1, :cond_2c

    .line 166
    iget-byte v0, p2, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    .line 167
    return-object v2

    .line 163
    :cond_2c
    invoke-virtual {p1}, Lu/aly/dl;->bRo()Ljava/lang/String;

    move-result-object v0

    .line 164
    return-object v0

    .line 170
    :pswitch_31
    iget-byte v0, p2, Lu/aly/cB;->b:B

    sget-object v1, Lu/aly/bj;->bxm:Lu/aly/cB;

    iget-byte v1, v1, Lu/aly/cB;->b:B

    if-eq v0, v1, :cond_3f

    .line 175
    iget-byte v0, p2, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    .line 176
    return-object v2

    .line 172
    :cond_3f
    invoke-virtual {p1}, Lu/aly/dl;->bRm()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 173
    return-object v0

    .line 159
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_31
    .end packed-switch
.end method

.method protected bUH(Lu/aly/dl;)V
    .registers 5

    .prologue
    .line 188
    sget-object v1, Lu/aly/bO;->a:[I

    iget-object v0, p0, Lu/aly/bj;->c:Lu/aly/aF;

    check-cast v0, Lu/aly/bj$a;

    invoke-virtual {v0}, Lu/aly/bj$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_40

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot write union with unknown field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lu/aly/bj;->c:Lu/aly/aF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :pswitch_2b
    iget-object v0, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 191
    invoke-virtual {p1, v0}, Lu/aly/dl;->a(Ljava/lang/String;)V

    .line 192
    return-void

    .line 194
    :pswitch_33
    iget-object v0, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 195
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lu/aly/dl;->a(J)V

    .line 196
    return-void

    .line 188
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_33
    .end packed-switch
.end method

.method protected bUI(Lu/aly/dl;S)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 204
    invoke-static {p2}, Lu/aly/bj$a;->a(I)Lu/aly/bj$a;

    move-result-object v0

    .line 205
    if-nez v0, :cond_20

    .line 219
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Couldn\'t find a field with field id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_20
    sget-object v1, Lu/aly/bO;->a:[I

    invoke-virtual {v0}, Lu/aly/bj$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_42

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setField wasn\'t null, but didn\'t match any of the case statements!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :pswitch_34
    invoke-virtual {p1}, Lu/aly/dl;->bRo()Ljava/lang/String;

    move-result-object v0

    .line 210
    return-object v0

    .line 213
    :pswitch_39
    invoke-virtual {p1}, Lu/aly/dl;->bRm()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 214
    return-object v0

    .line 206
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_34
        :pswitch_39
    .end packed-switch
.end method

.method protected bUJ(Lu/aly/dl;)V
    .registers 5

    .prologue
    .line 225
    sget-object v1, Lu/aly/bO;->a:[I

    iget-object v0, p0, Lu/aly/bj;->c:Lu/aly/aF;

    check-cast v0, Lu/aly/bj$a;

    invoke-virtual {v0}, Lu/aly/bj$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_40

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot write union with unknown field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lu/aly/bj;->c:Lu/aly/aF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :pswitch_2b
    iget-object v0, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 228
    invoke-virtual {p1, v0}, Lu/aly/dl;->a(Ljava/lang/String;)V

    .line 229
    return-void

    .line 231
    :pswitch_33
    iget-object v0, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 232
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lu/aly/dl;->a(J)V

    .line 233
    return-void

    .line 225
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_33
    .end packed-switch
.end method

.method protected bridge synthetic bUK(Lu/aly/aF;)Lu/aly/cB;
    .registers 3

    .prologue
    .line 32
    check-cast p1, Lu/aly/bj$a;

    invoke-virtual {p0, p1}, Lu/aly/bj;->bVM(Lu/aly/bj$a;)Lu/aly/cB;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic bUL(S)Lu/aly/aF;
    .registers 3

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lu/aly/bj;->bVN(S)Lu/aly/bj$a;

    move-result-object v0

    return-object v0
.end method

.method protected bVM(Lu/aly/bj$a;)Lu/aly/cB;
    .registers 5

    .prologue
    .line 241
    sget-object v0, Lu/aly/bO;->a:[I

    invoke-virtual {p1}, Lu/aly/bj$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown field id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :pswitch_25
    sget-object v0, Lu/aly/bj;->bxl:Lu/aly/cB;

    return-object v0

    .line 245
    :pswitch_28
    sget-object v0, Lu/aly/bj;->bxm:Lu/aly/cB;

    return-object v0

    .line 241
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method

.method protected bVN(S)Lu/aly/bj$a;
    .registers 3

    .prologue
    .line 258
    invoke-static {p1}, Lu/aly/bj$a;->bQI(I)Lu/aly/bj$a;

    move-result-object v0

    return-object v0
.end method

.method public bVO(J)V
    .registers 4

    .prologue
    .line 289
    sget-object v0, Lu/aly/bj$a;->bts:Lu/aly/bj$a;

    iput-object v0, p0, Lu/aly/bj;->c:Lu/aly/aF;

    .line 290
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    .line 291
    return-void
.end method

.method public bVP(Lu/aly/bj;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 312
    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lu/aly/bj;->i()Lu/aly/aF;

    move-result-object v1

    invoke-virtual {p1}, Lu/aly/bj;->i()Lu/aly/aF;

    move-result-object v2

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lu/aly/bj;->j()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lu/aly/bj;->j()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method protected c()Lu/aly/aO;
    .registers 2

    .prologue
    .line 253
    sget-object v0, Lu/aly/bj;->bxk:Lu/aly/aO;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 304
    instance-of v0, p1, Lu/aly/bj;

    if-nez v0, :cond_6

    .line 307
    return v1

    .line 305
    :cond_6
    check-cast p1, Lu/aly/bj;

    invoke-virtual {p0, p1}, Lu/aly/bj;->bVP(Lu/aly/bj;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 330
    return v0
.end method
