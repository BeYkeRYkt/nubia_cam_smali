.class public Lcom/android/common/appService/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hS:Lcom/android/common/appService/o;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/appService/n;->hS:Lcom/android/common/appService/o;

    .line 4
    return-void
.end method

.method private kc(Lcom/android/common/appService/CameraMember;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 28
    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-eq p1, v1, :cond_9

    .line 29
    sget-object v1, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    if-ne p1, v1, :cond_a

    .line 28
    :cond_9
    :goto_9
    return v0

    .line 30
    :cond_a
    sget-object v1, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    if-eq p1, v1, :cond_9

    .line 31
    sget-object v1, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    if-eq p1, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private ke(ZJ)V
    .registers 6

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/common/appService/n;->hS:Lcom/android/common/appService/o;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Lcom/android/common/appService/o;

    invoke-direct {v0, p0}, Lcom/android/common/appService/o;-><init>(Lcom/android/common/appService/n;)V

    iput-object v0, p0, Lcom/android/common/appService/n;->hS:Lcom/android/common/appService/o;

    .line 38
    :cond_b
    iget-object v0, p0, Lcom/android/common/appService/n;->hS:Lcom/android/common/appService/o;

    iput-boolean p1, v0, Lcom/android/common/appService/o;->hU:Z

    .line 39
    iget-object v0, p0, Lcom/android/common/appService/n;->hS:Lcom/android/common/appService/o;

    iput-wide p2, v0, Lcom/android/common/appService/o;->hT:J

    .line 34
    return-void
.end method


# virtual methods
.method public kb(Lcom/android/common/appService/t;)V
    .registers 4

    .prologue
    .line 18
    if-eqz p1, :cond_18

    .line 19
    iget-object v0, p0, Lcom/android/common/appService/n;->hS:Lcom/android/common/appService/o;

    if-eqz v0, :cond_18

    .line 20
    iget-object v0, p0, Lcom/android/common/appService/n;->hS:Lcom/android/common/appService/o;

    iget-boolean v0, v0, Lcom/android/common/appService/o;->hU:Z

    .line 18
    if-eqz v0, :cond_18

    .line 21
    iget-object v0, p0, Lcom/android/common/appService/n;->hS:Lcom/android/common/appService/o;

    iget-wide v0, v0, Lcom/android/common/appService/o;->hT:J

    invoke-virtual {p1, v0, v1}, Lcom/android/common/appService/t;->kS(J)V

    .line 23
    iget-object v0, p0, Lcom/android/common/appService/n;->hS:Lcom/android/common/appService/o;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/common/appService/o;->hU:Z

    .line 17
    :cond_18
    return-void
.end method

.method public kd(Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 10
    sget-object v0, Lcom/android/common/appService/CameraMember;->jv:Lcom/android/common/appService/CameraMember;

    if-ne p1, v0, :cond_b

    .line 11
    const-wide/16 v0, 0x64

    invoke-direct {p0, v2, v0, v1}, Lcom/android/common/appService/n;->ke(ZJ)V

    .line 9
    :cond_a
    :goto_a
    return-void

    .line 12
    :cond_b
    invoke-direct {p0, p2}, Lcom/android/common/appService/n;->kc(Lcom/android/common/appService/CameraMember;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 13
    const-wide/16 v0, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/common/appService/n;->ke(ZJ)V

    goto :goto_a
.end method
