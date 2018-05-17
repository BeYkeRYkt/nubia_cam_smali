.class public abstract Lcom/android/common/appService/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/y;


# static fields
.field protected static final ik:Lcom/android/common/cameradevice/g;

.field protected static final il:Lcom/android/common/cameradevice/g;

.field protected static final im:Lcom/android/common/cameradevice/g;

.field protected static final in:Lcom/android/common/cameradevice/g;

.field protected static final io:I

.field protected static final ip:I

.field protected static final iq:I


# instance fields
.field protected ir:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 12
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@14
    nop

    move-result v0

    sput v0, Lcom/android/common/appService/r;->io:I

    .line 13
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@15
    nop

    move-result v0

    sput v0, Lcom/android/common/appService/r;->ip:I

    .line 14
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@17
    nop

    move-result v0

    sput v0, Lcom/android/common/appService/r;->iq:I

    .line 18
    sget v0, Lcom/android/common/appService/r;->io:I

    if-eq v0, v3, :cond_5b

    new-instance v0, Lcom/android/common/cameradevice/g;

    sget v2, Lcom/android/common/appService/r;->io:I

    invoke-direct {v0, v2, v3}, Lcom/android/common/cameradevice/g;-><init>(II)V

    .line 17
    :goto_2b
    sput-object v0, Lcom/android/common/appService/r;->ik:Lcom/android/common/cameradevice/g;

    .line 20
    sget v0, Lcom/android/common/appService/r;->ip:I

    if-eq v0, v3, :cond_5d

    new-instance v0, Lcom/android/common/cameradevice/g;

    sget v2, Lcom/android/common/appService/r;->ip:I

    invoke-direct {v0, v2, v3}, Lcom/android/common/cameradevice/g;-><init>(II)V

    .line 19
    :goto_38
    sput-object v0, Lcom/android/common/appService/r;->il:Lcom/android/common/cameradevice/g;

    .line 22
    sget v0, Lcom/android/common/appService/r;->iq:I

    if-eq v0, v3, :cond_5f

    new-instance v0, Lcom/android/common/cameradevice/g;

    sget v2, Lcom/android/common/appService/r;->iq:I

    invoke-direct {v0, v2, v3}, Lcom/android/common/cameradevice/g;-><init>(II)V

    .line 21
    :goto_45
    sput-object v0, Lcom/android/common/appService/r;->in:Lcom/android/common/cameradevice/g;

    .line 24
    sget v0, Lcom/android/common/appService/r;->io:I

    if-eq v0, v3, :cond_58

    sget v0, Lcom/android/common/appService/r;->iq:I

    if-eq v0, v3, :cond_58

    new-instance v1, Lcom/android/common/cameradevice/g;

    sget v0, Lcom/android/common/appService/r;->io:I

    sget v2, Lcom/android/common/appService/r;->iq:I

    invoke-direct {v1, v0, v2}, Lcom/android/common/cameradevice/g;-><init>(II)V

    .line 23
    :cond_58
    sput-object v1, Lcom/android/common/appService/r;->im:Lcom/android/common/cameradevice/g;

    .line 11
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_5b
    move-object v0, v1

    .line 18
    goto :goto_2b

    :cond_5d
    move-object v0, v1

    .line 20
    goto :goto_38

    :cond_5f
    move-object v0, v1

    .line 22
    goto :goto_45
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0}, Lcom/android/common/appService/r;->kC()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/appService/r;->ir:Ljava/util/List;

    .line 11
    return-void
.end method


# virtual methods
.method protected kC()Ljava/util/List;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 45
    sget-object v0, Lcom/android/common/appService/r;->ik:Lcom/android/common/cameradevice/g;

    if-eqz v0, :cond_12

    .line 46
    sget-object v0, Lcom/android/common/appService/r;->ik:Lcom/android/common/cameradevice/g;

    .line 52
    :goto_7
    if-eqz v0, :cond_20

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-object v1

    .line 47
    :cond_12
    sget-object v0, Lcom/android/common/appService/r;->il:Lcom/android/common/cameradevice/g;

    if-eqz v0, :cond_19

    .line 48
    sget-object v0, Lcom/android/common/appService/r;->il:Lcom/android/common/cameradevice/g;

    goto :goto_7

    .line 49
    :cond_19
    sget-object v0, Lcom/android/common/appService/r;->in:Lcom/android/common/cameradevice/g;

    if-eqz v0, :cond_21

    .line 50
    sget-object v0, Lcom/android/common/appService/r;->in:Lcom/android/common/cameradevice/g;

    goto :goto_7

    .line 57
    :cond_20
    return-object v1

    :cond_21
    move-object v0, v1

    goto :goto_7
.end method

.method public kD()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public final kE(Lcom/android/common/appService/CameraMember;)Ljava/util/List;
    .registers 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/common/appService/r;->ir:Ljava/util/List;

    return-object v0
.end method
