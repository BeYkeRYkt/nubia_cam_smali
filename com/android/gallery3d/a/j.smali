.class public Lcom/android/gallery3d/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/p;


# static fields
.field private static final avd:[Ljava/lang/String;

.field public static final ave:Ljava/lang/String;

.field public static final avf:Ljava/lang/String;


# instance fields
.field private avg:Lcom/android/gallery3d/a/q;

.field private avh:Lcom/android/gallery3d/a/o;

.field private avi:Lcom/android/gallery3d/a/h;

.field private avj:Landroid/graphics/drawable/Drawable;

.field private avk:I

.field private avl:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 43
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@7
    nop

    move-result-object v0

    .line 42
    sput-object v0, Lcom/android/gallery3d/a/j;->ave:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/gallery3d/a/j;->ave:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@78
    nop

    move-result-object v0

    const-string/jumbo v1, "/Camera"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@78
    nop

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@7
    nop

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/a/j;->avf:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/gallery3d/a/j;->avf:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@78
    nop

    move-result-object v1

    const-string/jumbo v2, "%"

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@78
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@7
    nop

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/gallery3d/a/j;->avd:[Ljava/lang/String;

    .line 37
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    const/16 v0, 0x640

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, Lcom/android/gallery3d/a/j;->avl:I

    .line 53
    iput v0, p0, Lcom/android/gallery3d/a/j;->avk:I

    .line 58
    new-instance v0, Lcom/android/gallery3d/a/q;

    invoke-direct {v0}, Lcom/android/gallery3d/a/q;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/j;->avg:Lcom/android/gallery3d/a/q;

    .line 59
    iput-object p1, p0, Lcom/android/gallery3d/a/j;->avj:Landroid/graphics/drawable/Drawable;

    .line 57
    return-void
.end method

.method private aId(Lcom/android/gallery3d/a/q;)V
    .registers 3

    .prologue
    .line 267
    invoke-virtual {p1}, Lcom/android/gallery3d/a/q;->aIu()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avg:Lcom/android/gallery3d/a/q;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/q;->aIu()I

    move-result v0

    if-nez v0, :cond_f

    .line 268
    return-void

    .line 270
    :cond_f
    iput-object p1, p0, Lcom/android/gallery3d/a/j;->avg:Lcom/android/gallery3d/a/q;

    .line 271
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avh:Lcom/android/gallery3d/a/o;

    if-eqz v0, :cond_1a

    .line 272
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avh:Lcom/android/gallery3d/a/o;

    invoke-interface {v0}, Lcom/android/gallery3d/a/o;->aIp()V

    .line 266
    :cond_1a
    return-void
.end method

.method static synthetic aIj(Lcom/android/gallery3d/a/j;Lcom/android/gallery3d/a/q;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/gallery3d/a/j;->aId(Lcom/android/gallery3d/a/q;)V

    return-void
.end method


# virtual methods
.method public aHS(I)Z
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avg:Lcom/android/gallery3d/a/q;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/q;->aIu()I

    move-result v0

    if-ge p1, v0, :cond_15

    if-lez p1, :cond_15

    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avg:Lcom/android/gallery3d/a/q;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/q;->aIw(I)Lcom/android/gallery3d/a/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/a/h;->aHo()Z

    move-result v0

    return v0

    .line 126
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public aHT(Landroid/content/Context;)Z
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avi:Lcom/android/gallery3d/a/h;

    if-nez v0, :cond_8

    return v3

    .line 202
    :cond_8
    new-instance v0, Lcom/android/gallery3d/a/l;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/a/l;-><init>(Lcom/android/gallery3d/a/j;Landroid/content/Context;)V

    .line 203
    new-array v1, v4, [Lcom/android/gallery3d/a/h;

    iget-object v2, p0, Lcom/android/gallery3d/a/j;->avi:Lcom/android/gallery3d/a/h;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 204
    iput-object v5, p0, Lcom/android/gallery3d/a/j;->avi:Lcom/android/gallery3d/a/h;

    .line 205
    return v4
.end method

.method public aHU(Landroid/net/Uri;)I
    .registers 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avg:Lcom/android/gallery3d/a/q;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/q;->aIy(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public aHV()Landroid/net/Uri;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avi:Lcom/android/gallery3d/a/h;

    if-nez v0, :cond_6

    return-object v1

    .line 210
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avi:Lcom/android/gallery3d/a/h;

    invoke-interface {v0}, Lcom/android/gallery3d/a/h;->aHH()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public aHW(I)Lcom/android/gallery3d/a/g;
    .registers 3

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/j;->aHX(I)Lcom/android/gallery3d/a/h;

    move-result-object v0

    return-object v0
.end method

.method public aHX(I)Lcom/android/gallery3d/a/h;
    .registers 3

    .prologue
    .line 75
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avg:Lcom/android/gallery3d/a/q;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/q;->aIu()I

    move-result v0

    if-lt p1, v0, :cond_c

    .line 76
    :cond_a
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_c
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avg:Lcom/android/gallery3d/a/q;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/q;->aIw(I)Lcom/android/gallery3d/a/h;

    move-result-object v0

    return-object v0
.end method

.method public aHY()I
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avg:Lcom/android/gallery3d/a/q;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/q;->aIu()I

    move-result v0

    return v0
.end method

.method public aHZ(Landroid/app/Activity;I)Landroid/view/View;
    .registers 9

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avg:Lcom/android/gallery3d/a/q;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/q;->aIu()I

    move-result v0

    if-ge p2, v0, :cond_a

    if-gez p2, :cond_c

    .line 105
    :cond_a
    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_c
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avg:Lcom/android/gallery3d/a/q;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/a/q;->aIw(I)Lcom/android/gallery3d/a/h;

    move-result-object v0

    .line 109
    iget v2, p0, Lcom/android/gallery3d/a/j;->avl:I

    iget v3, p0, Lcom/android/gallery3d/a/j;->avk:I

    .line 110
    iget-object v1, p0, Lcom/android/gallery3d/a/j;->avj:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v1, p1

    move-object v5, p0

    .line 108
    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/a/h;->aHy(Landroid/app/Activity;IILandroid/graphics/drawable/Drawable;Lcom/android/gallery3d/a/p;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public aIa(Lcom/android/gallery3d/a/h;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 256
    new-instance v1, Lcom/android/gallery3d/a/i;

    invoke-direct {v1}, Lcom/android/gallery3d/a/i;-><init>()V

    .line 257
    :goto_6
    iget-object v2, p0, Lcom/android/gallery3d/a/j;->avg:Lcom/android/gallery3d/a/q;

    invoke-virtual {v2}, Lcom/android/gallery3d/a/q;->aIu()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 258
    iget-object v2, p0, Lcom/android/gallery3d/a/j;->avg:Lcom/android/gallery3d/a/q;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/a/q;->aIw(I)Lcom/android/gallery3d/a/h;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1d

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 259
    :cond_1d
    iget-object v1, p0, Lcom/android/gallery3d/a/j;->avg:Lcom/android/gallery3d/a/q;

    invoke-virtual {v1, v0, p1}, Lcom/android/gallery3d/a/q;->aIA(ILcom/android/gallery3d/a/h;)V

    .line 260
    iget-object v1, p0, Lcom/android/gallery3d/a/j;->avh:Lcom/android/gallery3d/a/o;

    if-eqz v1, :cond_2b

    .line 261
    iget-object v1, p0, Lcom/android/gallery3d/a/j;->avh:Lcom/android/gallery3d/a/o;

    invoke-interface {v1, v0, p1}, Lcom/android/gallery3d/a/o;->aIs(ILcom/android/gallery3d/a/g;)V

    .line 251
    :cond_2b
    return-void
.end method

.method public aIb(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 5

    .prologue
    .line 220
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/a/j;->aHU(Landroid/net/Uri;)I

    move-result v0

    .line 221
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 222
    return-void

    .line 225
    :cond_8
    iget-object v1, p0, Lcom/android/gallery3d/a/j;->avg:Lcom/android/gallery3d/a/q;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/a/q;->aIw(I)Lcom/android/gallery3d/a/h;

    move-result-object v1

    .line 226
    invoke-interface {v1, p1}, Lcom/android/gallery3d/a/h;->aHI(Landroid/content/ContentResolver;)Lcom/android/gallery3d/a/h;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_17

    .line 228
    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/a/j;->aIi(ILcom/android/gallery3d/a/h;)V

    .line 219
    :cond_17
    return-void
.end method

.method public aIc(Landroid/content/Context;I)V
    .registers 5

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avg:Lcom/android/gallery3d/a/q;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/q;->aIu()I

    move-result v0

    if-ge p2, v0, :cond_a

    if-gez p2, :cond_b

    :cond_a
    return-void

    .line 132
    :cond_b
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avg:Lcom/android/gallery3d/a/q;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/a/q;->aIx(I)Lcom/android/gallery3d/a/h;

    move-result-object v0

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/j;->aHT(Landroid/content/Context;)Z

    .line 135
    iput-object v0, p0, Lcom/android/gallery3d/a/j;->avi:Lcom/android/gallery3d/a/h;

    .line 136
    iget-object v1, p0, Lcom/android/gallery3d/a/j;->avh:Lcom/android/gallery3d/a/o;

    invoke-interface {v1, p2, v0}, Lcom/android/gallery3d/a/o;->aIq(ILcom/android/gallery3d/a/g;)V

    .line 130
    return-void
.end method

.method public aIe(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7

    .prologue
    .line 69
    new-instance v0, Lcom/android/gallery3d/a/k;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/gallery3d/a/k;-><init>(Lcom/android/gallery3d/a/j;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 70
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ContentResolver;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    return-void
.end method

.method public aIf(Lcom/android/gallery3d/a/o;)V
    .registers 3

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/gallery3d/a/j;->avh:Lcom/android/gallery3d/a/o;

    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avg:Lcom/android/gallery3d/a/q;

    if-eqz v0, :cond_b

    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avh:Lcom/android/gallery3d/a/o;

    invoke-interface {v0}, Lcom/android/gallery3d/a/o;->aIp()V

    .line 114
    :cond_b
    return-void
.end method

.method public aIg(II)V
    .registers 4

    .prologue
    const/16 v0, 0x640

    .line 94
    if-lez p1, :cond_6

    if-gtz p2, :cond_b

    .line 95
    :cond_6
    iput v0, p0, Lcom/android/gallery3d/a/j;->avk:I

    iput v0, p0, Lcom/android/gallery3d/a/j;->avl:I

    .line 93
    :goto_a
    return-void

    .line 97
    :cond_b
    if-ge p1, v0, :cond_14

    :goto_d
    iput p1, p0, Lcom/android/gallery3d/a/j;->avl:I

    .line 98
    if-ge p2, v0, :cond_16

    :goto_11
    iput p2, p0, Lcom/android/gallery3d/a/j;->avk:I

    goto :goto_a

    :cond_14
    move p1, v0

    .line 97
    goto :goto_d

    :cond_16
    move p2, v0

    .line 98
    goto :goto_11
.end method

.method public aIh()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avi:Lcom/android/gallery3d/a/h;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    return v0

    .line 193
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avi:Lcom/android/gallery3d/a/h;

    .line 194
    iput-object v1, p0, Lcom/android/gallery3d/a/j;->avi:Lcom/android/gallery3d/a/h;

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/a/j;->aIa(Lcom/android/gallery3d/a/h;)V

    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public aIi(ILcom/android/gallery3d/a/h;)V
    .registers 5

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avg:Lcom/android/gallery3d/a/q;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/a/q;->aIz(ILcom/android/gallery3d/a/h;)V

    .line 235
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avh:Lcom/android/gallery3d/a/o;

    if-eqz v0, :cond_13

    .line 236
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->avh:Lcom/android/gallery3d/a/o;

    new-instance v1, Lcom/android/gallery3d/a/t;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/a/t;-><init>(Lcom/android/gallery3d/a/j;I)V

    invoke-interface {v0, v1}, Lcom/android/gallery3d/a/o;->aIr(Lcom/android/gallery3d/a/n;)V

    .line 233
    :cond_13
    return-void
.end method
