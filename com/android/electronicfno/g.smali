.class public Lcom/android/electronicfno/g;
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
    const-string/jumbo v1, "pref_camera_electronic_aperture_key"

    iput-object v1, p0, Lcom/android/electronicfno/g;->oV:Ljava/lang/String;

    .line 20
    const v1, 0x7f0a039b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/electronicfno/g;->pj:Ljava/lang/String;

    .line 21
    const v1, 0x7f0200d9

    iput v1, p0, Lcom/android/electronicfno/g;->pd:I

    .line 22
    const v1, 0x7f0200db

    iput v1, p0, Lcom/android/electronicfno/g;->pg:I

    .line 23
    const v1, 0x7f0200da

    iput v1, p0, Lcom/android/electronicfno/g;->pf:I

    .line 24
    invoke-direct {p0, v0}, Lcom/android/electronicfno/g;->bmS(Landroid/content/res/Resources;)V

    .line 16
    return-void
.end method

.method private bmS(Landroid/content/res/Resources;)V
    .registers 5

    .prologue
    .line 27
    const v0, 0x7f0b0019

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/electronicfno/g;->oQ:[Ljava/lang/String;

    .line 28
    const v0, 0x7f0b001a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/electronicfno/g;->oR:[Ljava/lang/String;

    .line 29
    const v0, 0x7f0a00fd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->aeB()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 31
    invoke-direct {p0}, Lcom/android/electronicfno/g;->bmT()V

    .line 33
    :cond_2a
    sget-boolean v1, Lcom/android/electronicfno/g;->oE:Z

    if-eqz v1, :cond_3e

    .line 34
    iget-object v1, p0, Lcom/android/electronicfno/g;->oQ:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/electronicfno/g;->oQ:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/electronicfno/g;->uX([Ljava/lang/String;I)V

    .line 35
    iget-object v1, p0, Lcom/android/electronicfno/g;->oR:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/electronicfno/g;->oR:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/electronicfno/g;->uX([Ljava/lang/String;I)V

    .line 37
    :cond_3e
    invoke-direct {p0, v0}, Lcom/android/electronicfno/g;->bmU(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/electronicfno/g;->oP:I

    .line 38
    iget v0, p0, Lcom/android/electronicfno/g;->oP:I

    iput v0, p0, Lcom/android/electronicfno/g;->oU:I

    .line 26
    return-void
.end method

.method private bmT()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 41
    iget-object v0, p0, Lcom/android/electronicfno/g;->oQ:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 42
    new-array v1, v0, [Ljava/lang/String;

    .line 43
    iget-object v2, p0, Lcom/android/electronicfno/g;->oQ:[Ljava/lang/String;

    invoke-static {v2, v3, v1, v3, v0}, Lcom/android/f/a;->btG([Ljava/lang/CharSequence;I[Ljava/lang/CharSequence;II)V

    .line 44
    iput-object v1, p0, Lcom/android/electronicfno/g;->oQ:[Ljava/lang/String;

    .line 45
    iget-object v2, p0, Lcom/android/electronicfno/g;->oR:[Ljava/lang/String;

    invoke-static {v2, v3, v1, v3, v0}, Lcom/android/f/a;->btG([Ljava/lang/CharSequence;I[Ljava/lang/CharSequence;II)V

    .line 46
    iput-object v1, p0, Lcom/android/electronicfno/g;->oR:[Ljava/lang/String;

    .line 40
    return-void
.end method

.method private bmU(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 49
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/electronicfno/g;->oR:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 50
    iget-object v1, p0, Lcom/android/electronicfno/g;->oR:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lcom/android/common/h;->apo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    return v0

    .line 49
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :cond_14
    iget-object v0, p0, Lcom/android/electronicfno/g;->oR:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method


# virtual methods
.method protected vg(ILcom/android/common/ui/RenderPreference$ActionEvent;Z)V
    .registers 7

    .prologue
    .line 57
    const-string/jumbo v0, "1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "electronic aperture value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/electronicfno/g;->oR:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/android/electronicfno/g;->oV:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/electronicfno/g;->oR:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/electronicfno/g;->uM(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method
