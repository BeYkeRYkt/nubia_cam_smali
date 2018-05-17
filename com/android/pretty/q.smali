.class public Lcom/android/pretty/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/h;


# static fields
.field private static final aEp:[I

.field private static final aEq:[I

.field private static final aEr:[I


# instance fields
.field aEs:Landroid/app/Activity;

.field aEt:I

.field aEu:Lcom/android/pretty/k;

.field private aEv:Landroid/content/SharedPreferences;

.field aEw:Lcom/android/pretty/WaterDropSeekbar;

.field aEx:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xb

    .line 21
    new-array v0, v1, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/pretty/q;->aEq:[I

    .line 24
    new-array v0, v1, [I

    fill-array-data v0, :array_32

    sput-object v0, Lcom/android/pretty/q;->aEp:[I

    .line 27
    new-array v0, v1, [I

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/android/pretty/q;->aEr:[I

    .line 18
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 21
    :array_18
    .array-data 4
        0x0
        0x5
        0xf
        0x19
        0x23
        0x2d
        0x37
        0x41
        0x50
        0x5f
        0x78
    .end array-data

    .line 24
    :array_32
    .array-data 4
        0x0
        0x0
        0x4
        0x9
        0xc
        0x10
        0x1e
        0x2c
        0x3b
        0x4b
        0x5a
    .end array-data

    .line 27
    :array_4c
    .array-data 4
        0x0
        0x8
        0xc
        0x12
        0x1a
        0x24
        0x2e
        0x38
        0x42
        0x4c
        0x56
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/content/SharedPreferences;Lcom/android/pretty/k;)V
    .registers 8

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/pretty/q;->aEv:Landroid/content/SharedPreferences;

    .line 38
    iput-object p1, p0, Lcom/android/pretty/q;->aEs:Landroid/app/Activity;

    .line 39
    iput-object p3, p0, Lcom/android/pretty/q;->aEv:Landroid/content/SharedPreferences;

    .line 40
    iput-object p4, p0, Lcom/android/pretty/q;->aEu:Lcom/android/pretty/k;

    .line 41
    iput-object p2, p0, Lcom/android/pretty/q;->aEx:Landroid/view/View;

    .line 42
    iget-object v0, p0, Lcom/android/pretty/q;->aEx:Landroid/view/View;

    const v1, 0x7f100148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/pretty/WaterDropSeekbar;

    iput-object v0, p0, Lcom/android/pretty/q;->aEw:Lcom/android/pretty/WaterDropSeekbar;

    .line 43
    iget-object v0, p0, Lcom/android/pretty/q;->aEw:Lcom/android/pretty/WaterDropSeekbar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/pretty/WaterDropSeekbar;->aSV(I)V

    .line 44
    iget-object v0, p0, Lcom/android/pretty/q;->aEv:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "pretty_expandable_item"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/pretty/q;->aEt:I

    .line 45
    iget-object v0, p0, Lcom/android/pretty/q;->aEw:Lcom/android/pretty/WaterDropSeekbar;

    iget v1, p0, Lcom/android/pretty/q;->aEt:I

    invoke-virtual {v0, v1}, Lcom/android/pretty/WaterDropSeekbar;->aSW(I)V

    .line 46
    iget-object v0, p0, Lcom/android/pretty/q;->aEw:Lcom/android/pretty/WaterDropSeekbar;

    new-instance v1, Lcom/android/pretty/H;

    invoke-direct {v1, p0}, Lcom/android/pretty/H;-><init>(Lcom/android/pretty/q;)V

    invoke-virtual {v0, v1}, Lcom/android/pretty/WaterDropSeekbar;->aSX(Lcom/android/pretty/m;)V

    .line 37
    return-void
.end method

.method private aTC(III)V
    .registers 5

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/pretty/q;->aEu:Lcom/android/pretty/k;

    if-eqz v0, :cond_9

    .line 94
    iget-object v0, p0, Lcom/android/pretty/q;->aEu:Lcom/android/pretty/k;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/pretty/k;->aSU(III)V

    .line 92
    :cond_9
    return-void
.end method

.method private aTD()V
    .registers 5

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/pretty/q;->aEv:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "pretty_expandable_item"

    iget v2, p0, Lcom/android/pretty/q;->aEt:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 71
    const-string/jumbo v1, "pref_camera_pretty_smooth_key"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/pretty/q;->aEt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    const-string/jumbo v1, "pref_camera_pretty_toning_key"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/pretty/q;->aEt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    const-string/jumbo v1, "pref_camera_pretty_slimming_key"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/pretty/q;->aEt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    iget-object v0, p0, Lcom/android/pretty/q;->aEs:Landroid/app/Activity;

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asl()Lcom/android/common/appService/W;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 68
    return-void
.end method

.method static synthetic aTE()[I
    .registers 1

    sget-object v0, Lcom/android/pretty/q;->aEp:[I

    return-object v0
.end method

.method static synthetic aTF()[I
    .registers 1

    sget-object v0, Lcom/android/pretty/q;->aEq:[I

    return-object v0
.end method

.method static synthetic aTG()[I
    .registers 1

    sget-object v0, Lcom/android/pretty/q;->aEr:[I

    return-object v0
.end method

.method static synthetic aTH(Lcom/android/pretty/q;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/pretty/q;->aTC(III)V

    return-void
.end method

.method static synthetic aTI(Lcom/android/pretty/q;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/pretty/q;->aTD()V

    return-void
.end method


# virtual methods
.method public aTB(Z)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 84
    if-eqz p1, :cond_1f

    .line 85
    sget-object v0, Lcom/android/pretty/q;->aEq:[I

    iget-object v1, p0, Lcom/android/pretty/q;->aEw:Lcom/android/pretty/WaterDropSeekbar;

    iget v1, v1, Lcom/android/pretty/WaterDropSeekbar;->aDS:I

    aget v0, v0, v1

    sget-object v1, Lcom/android/pretty/q;->aEr:[I

    iget-object v2, p0, Lcom/android/pretty/q;->aEw:Lcom/android/pretty/WaterDropSeekbar;

    iget v2, v2, Lcom/android/pretty/WaterDropSeekbar;->aDS:I

    aget v1, v1, v2

    sget-object v2, Lcom/android/pretty/q;->aEp:[I

    iget-object v3, p0, Lcom/android/pretty/q;->aEw:Lcom/android/pretty/WaterDropSeekbar;

    iget v3, v3, Lcom/android/pretty/WaterDropSeekbar;->aDS:I

    aget v2, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/pretty/q;->aTC(III)V

    .line 83
    :goto_1e
    return-void

    .line 88
    :cond_1f
    invoke-direct {p0, v0, v0, v0}, Lcom/android/pretty/q;->aTC(III)V

    goto :goto_1e
.end method

.method public vn(IZ)V
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/pretty/q;->aEw:Lcom/android/pretty/WaterDropSeekbar;

    invoke-virtual {v0, p1, p2}, Lcom/android/pretty/WaterDropSeekbar;->vn(IZ)V

    .line 99
    return-void
.end method
