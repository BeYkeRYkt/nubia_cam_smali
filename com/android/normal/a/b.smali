.class public Lcom/android/normal/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private aZP:Lcn/nubia/videogenerator/a/b;

.field private aZQ:I

.field private aZR:Lcom/android/normal/a/h;

.field private aZS:Lcom/android/common/cameradevice/j;

.field private aZT:Landroid/content/Context;

.field private aZU:I

.field private aZV:Lcom/android/normal/a/c;

.field private aZW:Lcom/android/normal/a/i;

.field private aZX:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aZY:Lcom/android/normal/a/e;

.field private aZZ:Lcom/android/normal/a/d;

.field private baa:Lcom/android/normal/a/g;

.field private bab:Lcom/android/normal/a/f;

.field private bac:I

.field private bad:Ljava/lang/String;

.field private bae:Ljava/lang/String;

.field private baf:Lcn/nubia/videogenerator/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-string/jumbo v0, "meeeLiveVideoGenerator"

    sput-object v0, Lcom/android/normal/a/b;->TAG:Ljava/lang/String;

    .line 38
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/normal/a/b;->aZX:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    iput v1, p0, Lcom/android/normal/a/b;->bac:I

    .line 97
    iput-object p1, p0, Lcom/android/normal/a/b;->aZT:Landroid/content/Context;

    .line 96
    return-void
.end method

.method static synthetic bqA(Lcom/android/normal/a/b;)I
    .registers 2

    iget v0, p0, Lcom/android/normal/a/b;->aZU:I

    return v0
.end method

.method static synthetic bqB(Lcom/android/normal/a/b;)Lcom/android/normal/a/c;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/a/b;->aZV:Lcom/android/normal/a/c;

    return-object v0
.end method

.method static synthetic bqC(Lcom/android/normal/a/b;)Lcom/android/normal/a/i;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/a/b;->aZW:Lcom/android/normal/a/i;

    return-object v0
.end method

.method static synthetic bqD(Lcom/android/normal/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/a/b;->aZX:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic bqE(Lcom/android/normal/a/b;)Lcom/android/normal/a/e;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/a/b;->aZY:Lcom/android/normal/a/e;

    return-object v0
.end method

.method static synthetic bqF(Lcom/android/normal/a/b;)Lcom/android/normal/a/d;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/a/b;->aZZ:Lcom/android/normal/a/d;

    return-object v0
.end method

.method static synthetic bqG(Lcom/android/normal/a/b;)Lcom/android/normal/a/g;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/a/b;->baa:Lcom/android/normal/a/g;

    return-object v0
.end method

.method static synthetic bqH(Lcom/android/normal/a/b;)Lcom/android/normal/a/f;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/a/b;->bab:Lcom/android/normal/a/f;

    return-object v0
.end method

.method static synthetic bqI(Lcom/android/normal/a/b;)I
    .registers 2

    iget v0, p0, Lcom/android/normal/a/b;->bac:I

    return v0
.end method

.method static synthetic bqJ(Lcom/android/normal/a/b;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/a/b;->bad:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bqK(Lcom/android/normal/a/b;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/a/b;->bae:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bqL(Lcom/android/normal/a/b;)Lcn/nubia/videogenerator/a/a;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/a/b;->baf:Lcn/nubia/videogenerator/a/a;

    return-object v0
.end method

.method static synthetic bqM(Lcom/android/normal/a/b;Lcom/android/normal/a/i;)Lcom/android/normal/a/i;
    .registers 2

    iput-object p1, p0, Lcom/android/normal/a/b;->aZW:Lcom/android/normal/a/i;

    return-object p1
.end method

.method static synthetic bqu()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/normal/a/b;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bqv(Lcom/android/normal/a/b;)Lcn/nubia/videogenerator/a/b;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/a/b;->aZP:Lcn/nubia/videogenerator/a/b;

    return-object v0
.end method

.method static synthetic bqw(Lcom/android/normal/a/b;)I
    .registers 2

    iget v0, p0, Lcom/android/normal/a/b;->aZQ:I

    return v0
.end method

.method static synthetic bqx(Lcom/android/normal/a/b;)Lcom/android/normal/a/h;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/a/b;->aZR:Lcom/android/normal/a/h;

    return-object v0
.end method

.method static synthetic bqy(Lcom/android/normal/a/b;)Lcom/android/common/cameradevice/j;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/a/b;->aZS:Lcom/android/common/cameradevice/j;

    return-object v0
.end method

.method static synthetic bqz(Lcom/android/normal/a/b;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/a/b;->aZT:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bqi()Z
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/normal/a/b;->aZX:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public bqj(Lcom/android/normal/a/d;)V
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/normal/a/b;->aZZ:Lcom/android/normal/a/d;

    .line 138
    return-void
.end method

.method public bqk(Lcom/android/normal/a/e;)V
    .registers 2

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/normal/a/b;->aZY:Lcom/android/normal/a/e;

    .line 150
    return-void
.end method

.method public bql(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/normal/a/b;->bae:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public bqm()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/android/normal/a/b;->aZR:Lcom/android/normal/a/h;

    invoke-virtual {v0}, Lcom/android/normal/a/h;->bqU()Z

    move-result v0

    if-nez v0, :cond_12

    .line 173
    sget-object v0, Lcom/android/normal/a/b;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "make live when cacher is not runing !"

    invoke-static {v0, v1}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void

    .line 176
    :cond_12
    iget-object v0, p0, Lcom/android/normal/a/b;->aZX:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 177
    sget-object v0, Lcom/android/normal/a/b;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "make live is still exporting !"

    invoke-static {v0, v1}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void

    .line 180
    :cond_23
    iget-object v0, p0, Lcom/android/normal/a/b;->aZR:Lcom/android/normal/a/h;

    invoke-virtual {v0}, Lcom/android/normal/a/h;->bqV()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 181
    iget-object v0, p0, Lcom/android/normal/a/b;->aZR:Lcom/android/normal/a/h;

    invoke-virtual {v0}, Lcom/android/normal/a/h;->bqW()V

    .line 182
    sget-object v0, Lcom/android/normal/a/b;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "it seems no preview,try reRegister PreviewCallback"

    invoke-static {v0, v1}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_38
    iget-object v0, p0, Lcom/android/normal/a/b;->aZW:Lcom/android/normal/a/i;

    if-eqz v0, :cond_43

    .line 185
    iget-object v0, p0, Lcom/android/normal/a/b;->aZW:Lcom/android/normal/a/i;

    invoke-static {v0}, Lcom/android/normal/a/i;->brk(Lcom/android/normal/a/i;)V

    .line 186
    iput-object v2, p0, Lcom/android/normal/a/b;->aZW:Lcom/android/normal/a/i;

    .line 188
    :cond_43
    new-instance v0, Lcom/android/normal/a/i;

    invoke-direct {v0, p0, v2}, Lcom/android/normal/a/i;-><init>(Lcom/android/normal/a/b;Lcom/android/normal/a/i;)V

    iput-object v0, p0, Lcom/android/normal/a/b;->aZW:Lcom/android/normal/a/i;

    .line 189
    iget-object v0, p0, Lcom/android/normal/a/b;->aZW:Lcom/android/normal/a/i;

    invoke-virtual {v0}, Lcom/android/normal/a/i;->bra()V

    .line 171
    return-void
.end method

.method public bqn(Lcom/android/common/cameradevice/j;I)V
    .registers 3

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/normal/a/b;->aZS:Lcom/android/common/cameradevice/j;

    .line 114
    iput p2, p0, Lcom/android/normal/a/b;->aZQ:I

    .line 112
    return-void
.end method

.method public bqo(Lcn/nubia/videogenerator/a/b;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/normal/a/b;->aZP:Lcn/nubia/videogenerator/a/b;

    .line 126
    return-void
.end method

.method public bqp(Lcn/nubia/videogenerator/a/a;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/normal/a/b;->baf:Lcn/nubia/videogenerator/a/a;

    .line 122
    return-void
.end method

.method public bqq(I)V
    .registers 2

    .prologue
    .line 101
    iput p1, p0, Lcom/android/normal/a/b;->aZU:I

    .line 100
    return-void
.end method

.method public bqr()V
    .registers 3

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/normal/a/b;->bqs()V

    .line 156
    new-instance v0, Lcom/android/normal/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/normal/a/h;-><init>(Lcom/android/normal/a/b;Lcom/android/normal/a/h;)V

    iput-object v0, p0, Lcom/android/normal/a/b;->aZR:Lcom/android/normal/a/h;

    .line 157
    iget-object v0, p0, Lcom/android/normal/a/b;->aZR:Lcom/android/normal/a/h;

    invoke-virtual {v0}, Lcom/android/normal/a/h;->bqY()V

    .line 154
    return-void
.end method

.method public bqs()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lcom/android/normal/a/b;->aZW:Lcom/android/normal/a/i;

    if-eqz v0, :cond_c

    .line 162
    iget-object v0, p0, Lcom/android/normal/a/b;->aZW:Lcom/android/normal/a/i;

    invoke-virtual {v0}, Lcom/android/normal/a/i;->cancel()V

    .line 163
    iput-object v1, p0, Lcom/android/normal/a/b;->aZW:Lcom/android/normal/a/i;

    .line 165
    :cond_c
    iget-object v0, p0, Lcom/android/normal/a/b;->aZR:Lcom/android/normal/a/h;

    if-eqz v0, :cond_17

    .line 166
    iget-object v0, p0, Lcom/android/normal/a/b;->aZR:Lcom/android/normal/a/h;

    invoke-virtual {v0}, Lcom/android/normal/a/h;->bqX()V

    .line 167
    iput-object v1, p0, Lcom/android/normal/a/b;->aZR:Lcom/android/normal/a/h;

    .line 160
    :cond_17
    return-void
.end method

.method public bqt(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/normal/a/b;->bad:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .prologue
    .line 105
    iput p1, p0, Lcom/android/normal/a/b;->bac:I

    .line 104
    return-void
.end method
