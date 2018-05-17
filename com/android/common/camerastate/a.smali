.class public Lcom/android/common/camerastate/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static afh:Z


# instance fields
.field private aff:Lcom/android/common/camerastate/DeviceState;

.field private afg:Lcom/android/common/camerastate/FunctionState;

.field private afi:Ljava/util/ArrayList;

.field private afj:Lcom/android/common/camerastate/UIState;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13
    const-string/jumbo v0, "CameraStateManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/common/camerastate/a;->afh:Z

    .line 11
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    iput-object v0, p0, Lcom/android/common/camerastate/a;->afj:Lcom/android/common/camerastate/UIState;

    .line 16
    sget-object v0, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;

    iput-object v0, p0, Lcom/android/common/camerastate/a;->aff:Lcom/android/common/camerastate/DeviceState;

    .line 17
    sget-object v0, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    iput-object v0, p0, Lcom/android/common/camerastate/a;->afg:Lcom/android/common/camerastate/FunctionState;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/camerastate/a;->afi:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {p0}, Lcom/android/common/camerastate/a;->amI()V

    .line 121
    return-void
.end method

.method private amP(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 108
    sget-boolean v0, Lcom/android/common/camerastate/a;->afh:Z

    if-eqz v0, :cond_a

    .line 109
    const-string/jumbo v0, "CameraStateManager"

    invoke-static {v0, p1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_a
    return-void
.end method


# virtual methods
.method public amE()Lcom/android/common/camerastate/UIState;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/common/camerastate/a;->afj:Lcom/android/common/camerastate/UIState;

    return-object v0
.end method

.method public amF()Lcom/android/common/camerastate/FunctionState;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/common/camerastate/a;->afg:Lcom/android/common/camerastate/FunctionState;

    return-object v0
.end method

.method public amG()Lcom/android/common/camerastate/DeviceState;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/common/camerastate/a;->aff:Lcom/android/common/camerastate/DeviceState;

    return-object v0
.end method

.method public amH(Lcom/android/common/camerastate/b;)Z
    .registers 6

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/common/camerastate/a;->afj:Lcom/android/common/camerastate/UIState;

    iget-object v1, p0, Lcom/android/common/camerastate/a;->aff:Lcom/android/common/camerastate/DeviceState;

    iget-object v2, p0, Lcom/android/common/camerastate/a;->afg:Lcom/android/common/camerastate/FunctionState;

    iget-object v3, p0, Lcom/android/common/camerastate/a;->afi:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/common/camerastate/b;->amB(Lcom/android/common/camerastate/UIState;Lcom/android/common/camerastate/DeviceState;Lcom/android/common/camerastate/FunctionState;Ljava/util/ArrayList;)Z

    move-result v0

    .line 23
    if-nez v0, :cond_3b

    .line 24
    const-string/jumbo v1, "CameraStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/common/camerastate/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " set state to ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_3b
    return v0
.end method

.method public amI()V
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/common/camerastate/a;->afi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 44
    return-void
.end method

.method public amJ(Lcom/android/common/camerastate/DeviceState;)V
    .registers 4

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDevice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/camerastate/a;->amP(Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/android/common/camerastate/a;->aff:Lcom/android/common/camerastate/DeviceState;

    .line 58
    return-void
.end method

.method public amK(Lcom/android/common/camerastate/FunctionState;)V
    .registers 4

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFunction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/camerastate/a;->amP(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    if-eq p1, v0, :cond_22

    const/4 v0, 0x1

    :goto_1c
    invoke-static {v0}, Lcom/android/common/h;->apf(Z)V

    .line 70
    iput-object p1, p0, Lcom/android/common/camerastate/a;->afg:Lcom/android/common/camerastate/FunctionState;

    .line 67
    return-void

    .line 69
    :cond_22
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public amL(Lcom/android/common/camerastate/FunctionState;)V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/common/camerastate/a;->afg:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, p1, :cond_6

    if-nez p1, :cond_a

    .line 91
    :cond_6
    sget-object v0, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    iput-object v0, p0, Lcom/android/common/camerastate/a;->afg:Lcom/android/common/camerastate/FunctionState;

    .line 89
    :cond_a
    return-void
.end method

.method public varargs amM([Lcom/android/common/camerastate/b;)V
    .registers 6

    .prologue
    .line 36
    array-length v1, p1

    .line 37
    iget-object v0, p0, Lcom/android/common/camerastate/a;->afi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 38
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_3f

    .line 39
    iget-object v2, p0, Lcom/android/common/camerastate/a;->afi:Ljava/util/ArrayList;

    aget-object v3, p1, v0

    invoke-interface {v3}, Lcom/android/common/camerastate/b;->amD()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "put <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-interface {v3}, Lcom/android/common/camerastate/b;->amD()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/common/camerastate/a;->amP(Ljava/lang/String;)V

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 35
    :cond_3f
    return-void
.end method

.method public amN(Lcom/android/common/camerastate/UIState;)V
    .registers 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/common/camerastate/a;->afj:Lcom/android/common/camerastate/UIState;

    if-eq v0, p1, :cond_6

    if-nez p1, :cond_23

    .line 79
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/camerastate/a;->amP(Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    iput-object v0, p0, Lcom/android/common/camerastate/a;->afj:Lcom/android/common/camerastate/UIState;

    .line 77
    :cond_23
    return-void
.end method

.method public amO(Lcom/android/common/camerastate/UIState;)V
    .registers 4

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/camerastate/a;->amP(Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    if-eq p1, v0, :cond_22

    const/4 v0, 0x1

    :goto_1c
    invoke-static {v0}, Lcom/android/common/h;->apf(Z)V

    .line 55
    iput-object p1, p0, Lcom/android/common/camerastate/a;->afj:Lcom/android/common/camerastate/UIState;

    .line 52
    return-void

    .line 54
    :cond_22
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CurrentState(UI, Device, Function) = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/camerastate/a;->afj:Lcom/android/common/camerastate/UIState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    const-string/jumbo v1, ", "

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/android/common/camerastate/a;->aff:Lcom/android/common/camerastate/DeviceState;

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    const-string/jumbo v1, ", "

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/android/common/camerastate/a;->afg:Lcom/android/common/camerastate/FunctionState;

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    const-string/jumbo v1, "); enbleState = "

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/android/common/camerastate/a;->afi:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
