.class Lcom/loc/cs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:S

.field protected b:I

.field protected c:B


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short v0, p0, Lcom/loc/cs;->a:S

    iput v0, p0, Lcom/loc/cs;->b:I

    iput-byte v0, p0, Lcom/loc/cs;->c:B

    return-void
.end method
