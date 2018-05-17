.class public Lcom/android/common/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ahD:Ljava/text/SimpleDateFormat;

.field private ahE:J

.field private ahF:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 995
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/common/i;->ahD:Ljava/text/SimpleDateFormat;

    .line 994
    return-void
.end method


# virtual methods
.method public aqp(J)Ljava/lang/String;
    .registers 6

    .prologue
    .line 1018
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1019
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "HH-mm-ss_yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1021
    return-object v0
.end method

.method public aqq(J)Ljava/lang/String;
    .registers 12

    .prologue
    const-wide/16 v6, 0x3e8

    .line 999
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1000
    iget-object v1, p0, Lcom/android/common/i;->ahD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1004
    div-long v2, p1, v6

    iget-wide v4, p0, Lcom/android/common/i;->ahE:J

    div-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-nez v1, :cond_37

    .line 1005
    iget v1, p0, Lcom/android/common/i;->ahF:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/common/i;->ahF:I

    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/common/i;->ahF:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1012
    :goto_36
    return-object v0

    .line 1008
    :cond_37
    iput-wide p1, p0, Lcom/android/common/i;->ahE:J

    .line 1009
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/common/i;->ahF:I

    goto :goto_36
.end method
