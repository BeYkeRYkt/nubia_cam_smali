.class public Lcom/android/electronicfno/f;
.super Lcom/android/common/ui/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 4

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/common/ui/d;-><init>(Lcom/android/common/appService/W;)V

    .line 18
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 19
    const-string/jumbo v1, "pref_camera_electronic_compensation_key"

    iput-object v1, p0, Lcom/android/electronicfno/f;->oV:Ljava/lang/String;

    .line 20
    const v1, 0x7f0a039c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/electronicfno/f;->pj:Ljava/lang/String;

    .line 21
    const v1, 0x7f0200dc

    iput v1, p0, Lcom/android/electronicfno/f;->pd:I

    .line 22
    const v1, 0x7f0200df

    iput v1, p0, Lcom/android/electronicfno/f;->pg:I

    .line 23
    const v1, 0x7f0200de

    iput v1, p0, Lcom/android/electronicfno/f;->pf:I

    .line 24
    invoke-direct {p0, v0}, Lcom/android/electronicfno/f;->bmQ(Landroid/content/res/Resources;)V

    .line 16
    return-void
.end method

.method private bmQ(Landroid/content/res/Resources;)V
    .registers 5

    .prologue
    .line 27
    const v0, 0x7f0b001b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/electronicfno/f;->oQ:[Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/android/electronicfno/f;->oQ:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/electronicfno/f;->oR:[Ljava/lang/String;

    .line 29
    const v0, 0x7f0a00fe

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    sget-boolean v1, Lcom/android/electronicfno/f;->oE:Z

    if-eqz v1, :cond_20

    .line 31
    iget-object v1, p0, Lcom/android/electronicfno/f;->oQ:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/electronicfno/f;->oQ:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/electronicfno/f;->uX([Ljava/lang/String;I)V

    .line 34
    :cond_20
    invoke-direct {p0, v0}, Lcom/android/electronicfno/f;->bmR(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/electronicfno/f;->oP:I

    .line 35
    iget v0, p0, Lcom/android/electronicfno/f;->oP:I

    iput v0, p0, Lcom/android/electronicfno/f;->oU:I

    .line 26
    return-void
.end method

.method private bmR(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 38
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/electronicfno/f;->oR:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 39
    iget-object v1, p0, Lcom/android/electronicfno/f;->oR:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lcom/android/common/h;->apo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    return v0

    .line 38
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 41
    :cond_14
    iget-object v0, p0, Lcom/android/electronicfno/f;->oR:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method


# virtual methods
.method protected vg(ILcom/android/common/ui/RenderPreference$ActionEvent;Z)V
    .registers 7

    .prologue
    .line 45
    const-string/jumbo v0, "1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "electronic aperture value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/electronicfno/f;->oR:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/electronicfno/f;->oV:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/electronicfno/f;->oR:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/electronicfno/f;->uM(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
