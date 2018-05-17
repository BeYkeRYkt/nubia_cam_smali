.class public Lcom/android/common/setting/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private TE:Lcom/android/common/appService/W;

.field private TF:Lcom/android/common/appService/y;

.field private final TG:I

.field private TH:[Lcom/android/common/setting/o;

.field private TI:Lcom/android/common/setting/t;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Lcom/android/common/appService/y;Lcom/android/common/setting/t;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v2, p0, Lcom/android/common/setting/i;->TH:[Lcom/android/common/setting/o;

    .line 12
    iput-object v2, p0, Lcom/android/common/setting/i;->TE:Lcom/android/common/appService/W;

    .line 13
    iput-object v2, p0, Lcom/android/common/setting/i;->TF:Lcom/android/common/appService/y;

    .line 18
    iput-object p1, p0, Lcom/android/common/setting/i;->TE:Lcom/android/common/appService/W;

    .line 19
    iput-object p2, p0, Lcom/android/common/setting/i;->TF:Lcom/android/common/appService/y;

    .line 20
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MU()I

    move-result v0

    iput v0, p0, Lcom/android/common/setting/i;->TG:I

    .line 21
    iget v0, p0, Lcom/android/common/setting/i;->TG:I

    new-array v0, v0, [Lcom/android/common/setting/o;

    iput-object v0, p0, Lcom/android/common/setting/i;->TH:[Lcom/android/common/setting/o;

    .line 22
    iput-object p3, p0, Lcom/android/common/setting/i;->TI:Lcom/android/common/setting/t;

    .line 23
    const/4 v0, 0x0

    :goto_21
    iget v1, p0, Lcom/android/common/setting/i;->TG:I

    if-ge v0, v1, :cond_2c

    .line 24
    iget-object v1, p0, Lcom/android/common/setting/i;->TH:[Lcom/android/common/setting/o;

    aput-object v2, v1, v0

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 17
    :cond_2c
    return-void
.end method


# virtual methods
.method public Vo(I)Lcom/android/common/setting/o;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 29
    if-ltz p1, :cond_7

    iget v0, p0, Lcom/android/common/setting/i;->TG:I

    if-lt p1, v0, :cond_8

    .line 30
    :cond_7
    return-object v1

    .line 33
    :cond_8
    iget-object v0, p0, Lcom/android/common/setting/i;->TH:[Lcom/android/common/setting/o;

    aget-object v0, v0, p1

    if-nez v0, :cond_1c

    .line 34
    iget-object v0, p0, Lcom/android/common/setting/i;->TH:[Lcom/android/common/setting/o;

    iget-object v1, p0, Lcom/android/common/setting/i;->TI:Lcom/android/common/setting/t;

    iget-object v2, p0, Lcom/android/common/setting/i;->TE:Lcom/android/common/appService/W;

    iget-object v3, p0, Lcom/android/common/setting/i;->TF:Lcom/android/common/appService/y;

    invoke-interface {v1, v2, p1, v3}, Lcom/android/common/setting/t;->SX(Lcom/android/common/appService/W;ILcom/android/common/appService/y;)Lcom/android/common/setting/o;

    move-result-object v1

    aput-object v1, v0, p1

    .line 36
    :cond_1c
    iget-object v0, p0, Lcom/android/common/setting/i;->TH:[Lcom/android/common/setting/o;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public Vp(I)V
    .registers 5

    .prologue
    .line 40
    if-ltz p1, :cond_2c

    iget v0, p0, Lcom/android/common/setting/i;->TG:I

    if-ge p1, v0, :cond_2c

    .line 41
    const-string/jumbo v0, "ParametersSetterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Release "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'s parametersSetter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/android/common/setting/i;->TH:[Lcom/android/common/setting/o;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 39
    :cond_2c
    return-void
.end method
