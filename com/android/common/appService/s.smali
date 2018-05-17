.class public Lcom/android/common/appService/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private is:Lcom/android/common/appService/W;

.field private it:Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;->iv:Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

    iput-object v0, p0, Lcom/android/common/appService/s;->it:Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/appService/s;->is:Lcom/android/common/appService/W;

    .line 12
    iput-object p1, p0, Lcom/android/common/appService/s;->is:Lcom/android/common/appService/W;

    .line 11
    return-void
.end method

.method private kF()Lcom/android/common/appService/W;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/common/appService/s;->is:Lcom/android/common/appService/W;

    return-object v0
.end method

.method private kH()V
    .registers 2

    .prologue
    .line 20
    sget-object v0, Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;->iu:Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

    invoke-direct {p0, v0}, Lcom/android/common/appService/s;->kK(Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;)V

    .line 21
    invoke-direct {p0}, Lcom/android/common/appService/s;->kF()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->ej()V

    .line 19
    return-void
.end method

.method private kI()V
    .registers 2

    .prologue
    .line 25
    sget-object v0, Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;->iv:Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

    invoke-direct {p0, v0}, Lcom/android/common/appService/s;->kK(Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;)V

    .line 24
    return-void
.end method

.method private kK(Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/common/appService/s;->it:Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

    .line 28
    return-void
.end method


# virtual methods
.method public kG()Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/common/appService/s;->it:Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

    return-object v0
.end method

.method public kJ(Z)V
    .registers 3

    .prologue
    .line 41
    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/android/common/appService/s;->kF()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rr()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 45
    :cond_c
    if-eqz p1, :cond_20

    invoke-direct {p0}, Lcom/android/common/appService/s;->kF()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rs()Z

    move-result v0

    if-nez v0, :cond_20

    .line 46
    iget-object v0, p0, Lcom/android/common/appService/s;->is:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pK()Z

    move-result v0

    .line 45
    if-eqz v0, :cond_27

    .line 49
    :cond_20
    if-eqz p1, :cond_28

    .line 50
    invoke-direct {p0}, Lcom/android/common/appService/s;->kH()V

    .line 40
    :goto_25
    return-void

    .line 42
    :cond_26
    return-void

    .line 47
    :cond_27
    return-void

    .line 52
    :cond_28
    invoke-direct {p0}, Lcom/android/common/appService/s;->kI()V

    goto :goto_25
.end method
