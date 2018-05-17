.class Lcom/loc/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected static bzj([BI)[B
    .registers 6

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :cond_3
    return-object v1

    :cond_4
    array-length v0, p0

    if-eqz v0, :cond_3

    :try_start_7
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v0, 0x1

    if-gtz v2, :cond_25

    move p1, v0

    :cond_18
    :goto_18
    new-array v1, p1, [B

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p1, -0x1

    const/4 v2, 0x0

    aput-byte v2, v1, v0
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_24} :catch_2c

    :goto_24
    return-object v1

    :cond_25
    add-int/lit8 v0, v2, 0x1

    if-gt v0, p1, :cond_18

    add-int/lit8 p1, v2, 0x1

    goto :goto_18

    :catch_2c
    move-exception v0

    const-string/jumbo v2, "BytesTool"

    const-string/jumbo v3, "StrBytesToVarBytes"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method
