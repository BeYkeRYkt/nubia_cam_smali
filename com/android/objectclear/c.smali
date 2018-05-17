.class public Lcom/android/objectclear/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aUb:Ljava/lang/String;


# instance fields
.field private aUc:I

.field private aUd:Landroid/app/Activity;

.field private aUe:Lcom/android/common/appService/W;

.field private aUf:Z

.field private aUg:Lcom/android/objectclear/d;

.field private aUh:Ljava/lang/Runnable;

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/android/objectclear/c;->aUc:I

    .line 19
    iput-boolean v0, p0, Lcom/android/objectclear/c;->aUf:Z

    .line 77
    new-instance v0, Lcom/android/objectclear/n;

    invoke-direct {v0, p0}, Lcom/android/objectclear/n;-><init>(Lcom/android/objectclear/c;)V

    iput-object v0, p0, Lcom/android/objectclear/c;->aUh:Ljava/lang/Runnable;

    .line 32
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/objectclear/c;->aUd:Landroid/app/Activity;

    .line 33
    iget-object v0, p0, Lcom/android/objectclear/c;->aUd:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/objectclear/c;->aUb:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/android/objectclear/c;->aUe:Lcom/android/common/appService/W;

    .line 35
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 36
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/objectclear/c;->width:I

    .line 37
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/objectclear/c;->height:I

    .line 31
    return-void
.end method

.method private blo(I[B)V
    .registers 7

    .prologue
    .line 111
    iget v0, p0, Lcom/android/objectclear/c;->width:I

    .line 112
    iget v1, p0, Lcom/android/objectclear/c;->height:I

    .line 111
    const/4 v2, 0x5

    invoke-static {p2, p1, v2, v0, v1}, Lcom/android/camera/ObjectClear/NubiaObjectClear;->SavePicture([BIIII)I

    move-result v0

    .line 113
    const-string/jumbo v1, "NubiaObjectClearDataProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dumpRawData SavePicture ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method static synthetic blq(Lcom/android/objectclear/c;)I
    .registers 2

    iget v0, p0, Lcom/android/objectclear/c;->height:I

    return v0
.end method

.method static synthetic blr(Lcom/android/objectclear/c;)I
    .registers 2

    iget v0, p0, Lcom/android/objectclear/c;->aUc:I

    return v0
.end method

.method static synthetic bls(Lcom/android/objectclear/c;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/objectclear/c;->aUe:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic blt(Lcom/android/objectclear/c;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/objectclear/c;->aUf:Z

    return v0
.end method

.method static synthetic blu(Lcom/android/objectclear/c;)Lcom/android/objectclear/d;
    .registers 2

    iget-object v0, p0, Lcom/android/objectclear/c;->aUg:Lcom/android/objectclear/d;

    return-object v0
.end method

.method static synthetic blv(Lcom/android/objectclear/c;)I
    .registers 2

    iget v0, p0, Lcom/android/objectclear/c;->width:I

    return v0
.end method

.method static synthetic blw(Lcom/android/objectclear/c;I)I
    .registers 2

    iput p1, p0, Lcom/android/objectclear/c;->aUc:I

    return p1
.end method

.method static synthetic blx(Lcom/android/objectclear/c;I[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/objectclear/c;->blo(I[B)V

    return-void
.end method


# virtual methods
.method public blp(Lcom/android/objectclear/d;)V
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/objectclear/c;->aUg:Lcom/android/objectclear/d;

    .line 40
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 45
    const-string/jumbo v0, "NubiaObjectClearDataProvider"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/objectclear/c;->aUh:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 44
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/objectclear/c;->aUf:Z

    .line 50
    return-void
.end method
