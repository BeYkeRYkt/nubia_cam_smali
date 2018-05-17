.class public Lcom/android/common/custom/D;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static YF:Lcom/android/common/custom/D;


# instance fields
.field private YE:Lcom/android/common/custom/x;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    new-instance v0, Lcom/android/common/custom/D;

    invoke-direct {v0}, Lcom/android/common/custom/D;-><init>()V

    sput-object v0, Lcom/android/common/custom/D;->YF:Lcom/android/common/custom/D;

    .line 5
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    .line 124
    invoke-direct {p0}, Lcom/android/common/custom/D;->aeO()V

    .line 123
    return-void
.end method

.method public static aeM()Lcom/android/common/custom/D;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/android/common/custom/D;->YF:Lcom/android/common/custom/D;

    return-object v0
.end method

.method private aeO()V
    .registers 5

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    if-eqz v0, :cond_5

    return-void

    .line 23
    :cond_5
    invoke-static {}, Lcom/android/common/custom/ProductInfo;->getProductName()Ljava/lang/String;

    move-result-object v0

    .line 25
    const-string/jumbo v1, "CameraConfigManger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "product: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string/jumbo v1, "NX503"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_34

    .line 28
    new-instance v0, Lcom/android/common/custom/N;

    invoke-direct {v0}, Lcom/android/common/custom/N;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    .line 18
    :goto_33
    return-void

    .line 29
    :cond_34
    const-string/jumbo v1, "NX601J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 30
    new-instance v0, Lcom/android/common/custom/F;

    invoke-direct {v0}, Lcom/android/common/custom/F;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto :goto_33

    .line 31
    :cond_45
    const-string/jumbo v1, "NX504J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 32
    new-instance v0, Lcom/android/common/custom/j;

    invoke-direct {v0}, Lcom/android/common/custom/j;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto :goto_33

    .line 33
    :cond_56
    const-string/jumbo v1, "NX505J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 34
    new-instance v0, Lcom/android/common/custom/L;

    invoke-direct {v0}, Lcom/android/common/custom/L;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto :goto_33

    .line 35
    :cond_67
    const-string/jumbo v1, "NX507J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 36
    const-string/jumbo v1, "NX507H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 35
    if-eqz v1, :cond_81

    .line 37
    :cond_79
    new-instance v0, Lcom/android/common/custom/u;

    invoke-direct {v0}, Lcom/android/common/custom/u;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto :goto_33

    .line 38
    :cond_81
    const-string/jumbo v1, "NX506J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 39
    new-instance v0, Lcom/android/common/custom/h;

    invoke-direct {v0}, Lcom/android/common/custom/h;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto :goto_33

    .line 40
    :cond_92
    const-string/jumbo v1, "NE501J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c8

    .line 41
    const-string/jumbo v1, "X9180"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 40
    if-nez v1, :cond_c8

    .line 42
    const-string/jumbo v1, "N9180"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 40
    if-nez v1, :cond_c8

    .line 43
    const-string/jumbo v1, "U9180"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 40
    if-nez v1, :cond_c8

    .line 44
    const-string/jumbo v1, "V9160"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 40
    if-nez v1, :cond_c8

    .line 45
    const-string/jumbo v1, "V9180"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 40
    if-eqz v1, :cond_d1

    .line 46
    :cond_c8
    new-instance v0, Lcom/android/common/custom/a;

    invoke-direct {v0}, Lcom/android/common/custom/a;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 47
    :cond_d1
    const-string/jumbo v1, "NX403A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 48
    new-instance v0, Lcom/android/common/custom/m;

    invoke-direct {v0}, Lcom/android/common/custom/m;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 49
    :cond_e3
    const-string/jumbo v1, "NX40X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fe

    .line 50
    const-string/jumbo v1, "NX402"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 49
    if-nez v1, :cond_fe

    .line 51
    const-string/jumbo v1, "NX401"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 49
    if-eqz v1, :cond_107

    .line 52
    :cond_fe
    new-instance v0, Lcom/android/common/custom/G;

    invoke-direct {v0}, Lcom/android/common/custom/G;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 53
    :cond_107
    const-string/jumbo v1, "NX50X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_119

    .line 54
    new-instance v0, Lcom/android/common/custom/z;

    invoke-direct {v0}, Lcom/android/common/custom/z;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 55
    :cond_119
    const-string/jumbo v1, "N918St"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13d

    .line 56
    const-string/jumbo v1, "N958St"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 55
    if-nez v1, :cond_13d

    .line 57
    const-string/jumbo v1, "N918X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 55
    if-nez v1, :cond_13d

    .line 58
    const-string/jumbo v1, "N958X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 55
    if-eqz v1, :cond_146

    .line 59
    :cond_13d
    new-instance v0, Lcom/android/common/custom/y;

    invoke-direct {v0}, Lcom/android/common/custom/y;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 60
    :cond_146
    const-string/jumbo v1, "NX406E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_158

    .line 61
    new-instance v0, Lcom/android/common/custom/M;

    invoke-direct {v0}, Lcom/android/common/custom/M;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 62
    :cond_158
    const-string/jumbo v1, "NX511J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_173

    .line 63
    const-string/jumbo v1, "NX521J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 62
    if-nez v1, :cond_173

    .line 64
    const-string/jumbo v1, "NX512J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 62
    if-eqz v1, :cond_17c

    .line 65
    :cond_173
    new-instance v0, Lcom/android/common/custom/K;

    invoke-direct {v0}, Lcom/android/common/custom/K;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 66
    :cond_17c
    const-string/jumbo v1, "NX511J_V3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18e

    .line 67
    const-string/jumbo v1, "NX519J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 66
    if-eqz v1, :cond_197

    .line 68
    :cond_18e
    new-instance v0, Lcom/android/common/custom/t;

    invoke-direct {v0}, Lcom/android/common/custom/t;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 69
    :cond_197
    const-string/jumbo v1, "NX510J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a9

    .line 70
    const-string/jumbo v1, "NX509J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 69
    if-eqz v1, :cond_1b2

    .line 71
    :cond_1a9
    new-instance v0, Lcom/android/common/custom/n;

    invoke-direct {v0}, Lcom/android/common/custom/n;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 72
    :cond_1b2
    const-string/jumbo v1, "NX518J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c4

    .line 73
    new-instance v0, Lcom/android/common/custom/k;

    invoke-direct {v0}, Lcom/android/common/custom/k;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 74
    :cond_1c4
    const-string/jumbo v1, "NX513J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d6

    .line 75
    const-string/jumbo v1, "NX513H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 74
    if-eqz v1, :cond_1df

    .line 76
    :cond_1d6
    new-instance v0, Lcom/android/common/custom/w;

    invoke-direct {v0}, Lcom/android/common/custom/w;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 77
    :cond_1df
    const-string/jumbo v1, "NX508J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1fa

    .line 78
    const-string/jumbo v1, "NX517J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 77
    if-nez v1, :cond_1fa

    .line 79
    const-string/jumbo v1, "NX508H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 77
    if-eqz v1, :cond_203

    .line 80
    :cond_1fa
    new-instance v0, Lcom/android/common/custom/B;

    invoke-direct {v0}, Lcom/android/common/custom/B;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 81
    :cond_203
    const-string/jumbo v1, "zx55q05_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_215

    .line 82
    new-instance v0, Lcom/android/common/custom/C;

    invoke-direct {v0}, Lcom/android/common/custom/C;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 83
    :cond_215
    const-string/jumbo v1, "N940Sc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_227

    .line 84
    new-instance v0, Lcom/android/common/custom/i;

    invoke-direct {v0}, Lcom/android/common/custom/i;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 85
    :cond_227
    const-string/jumbo v1, "NX529J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_239

    .line 86
    const-string/jumbo v1, "NX529H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 85
    if-eqz v1, :cond_242

    .line 87
    :cond_239
    new-instance v0, Lcom/android/common/custom/g;

    invoke-direct {v0}, Lcom/android/common/custom/g;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 88
    :cond_242
    const-string/jumbo v1, "NX527"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_254

    .line 89
    new-instance v0, Lcom/android/common/custom/A;

    invoke-direct {v0}, Lcom/android/common/custom/A;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 90
    :cond_254
    const-string/jumbo v1, "NX531"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_266

    .line 91
    new-instance v0, Lcom/android/common/custom/q;

    invoke-direct {v0}, Lcom/android/common/custom/q;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 92
    :cond_266
    const-string/jumbo v1, "NX523"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_278

    .line 93
    new-instance v0, Lcom/android/common/custom/f;

    invoke-direct {v0}, Lcom/android/common/custom/f;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 94
    :cond_278
    const-string/jumbo v1, "NX543"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_28a

    .line 95
    new-instance v0, Lcom/android/common/custom/o;

    invoke-direct {v0}, Lcom/android/common/custom/o;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 96
    :cond_28a
    const-string/jumbo v1, "NX549"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_29c

    .line 97
    new-instance v0, Lcom/android/common/custom/b;

    invoke-direct {v0}, Lcom/android/common/custom/b;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 98
    :cond_29c
    const-string/jumbo v1, "NX551"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2ae

    .line 99
    new-instance v0, Lcom/android/common/custom/p;

    invoke-direct {v0}, Lcom/android/common/custom/p;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 100
    :cond_2ae
    const-string/jumbo v1, "NX569"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2c0

    .line 101
    new-instance v0, Lcom/android/common/custom/l;

    invoke-direct {v0}, Lcom/android/common/custom/l;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 102
    :cond_2c0
    const-string/jumbo v1, "NX541"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2d2

    .line 103
    const-string/jumbo v1, "NX535J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 102
    if-eqz v1, :cond_2db

    .line 104
    :cond_2d2
    new-instance v0, Lcom/android/common/custom/d;

    invoke-direct {v0}, Lcom/android/common/custom/d;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 105
    :cond_2db
    const-string/jumbo v1, "NX573"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2ed

    .line 106
    const-string/jumbo v1, "NX575"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2f6

    .line 107
    :cond_2ed
    new-instance v0, Lcom/android/common/custom/c;

    invoke-direct {v0}, Lcom/android/common/custom/c;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 108
    :cond_2f6
    const-string/jumbo v1, "NX563"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_308

    .line 109
    new-instance v0, Lcom/android/common/custom/e;

    invoke-direct {v0}, Lcom/android/common/custom/e;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 110
    :cond_308
    const-string/jumbo v1, "NX607"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31a

    .line 111
    new-instance v0, Lcom/android/common/custom/J;

    invoke-direct {v0}, Lcom/android/common/custom/J;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 112
    :cond_31a
    const-string/jumbo v1, "NX907"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32c

    .line 113
    new-instance v0, Lcom/android/common/custom/s;

    invoke-direct {v0}, Lcom/android/common/custom/s;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 114
    :cond_32c
    const-string/jumbo v1, "NX907J_N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_33e

    .line 115
    new-instance v0, Lcom/android/common/custom/E;

    invoke-direct {v0}, Lcom/android/common/custom/E;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 116
    :cond_33e
    const-string/jumbo v1, "NX591"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_350

    .line 117
    new-instance v0, Lcom/android/common/custom/r;

    invoke-direct {v0}, Lcom/android/common/custom/r;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33

    .line 119
    :cond_350
    new-instance v0, Lcom/android/common/custom/H;

    invoke-direct {v0}, Lcom/android/common/custom/H;-><init>()V

    iput-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    goto/16 :goto_33
.end method


# virtual methods
.method public aeN()Lcom/android/common/custom/x;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/common/custom/D;->YE:Lcom/android/common/custom/x;

    return-object v0
.end method
