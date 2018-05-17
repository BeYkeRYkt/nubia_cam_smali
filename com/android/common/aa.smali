.class final Lcom/android/common/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/K;


# static fields
.field private static final synthetic akU:[I


# instance fields
.field final synthetic akT:Lcom/android/common/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 2

    .prologue
    .line 952
    iput-object p1, p0, Lcom/android/common/aa;->akT:Lcom/android/common/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic awc()[I
    .registers 3

    sget-object v0, Lcom/android/common/aa;->akU:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/common/aa;->akU:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->values()[Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->ku:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->kv:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->kw:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->kx:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lcom/android/common/aa;->akU:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method


# virtual methods
.method public nT([ILcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V
    .registers 5

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/common/aa;->akT:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 963
    return-void

    .line 965
    :cond_b
    invoke-static {}, Lcom/android/common/aa;->awc()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    .line 961
    :goto_18
    return-void

    .line 967
    :pswitch_19
    iget-object v0, p0, Lcom/android/common/aa;->akT:Lcom/android/common/ActivityBase;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/common/ActivityBase;->ajN:Z

    .line 968
    iget-object v0, p0, Lcom/android/common/aa;->akT:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->auG()V

    .line 969
    iget-object v0, p0, Lcom/android/common/aa;->akT:Lcom/android/common/ActivityBase;

    invoke-static {v0}, Lcom/android/common/ActivityBase;->avX(Lcom/android/common/ActivityBase;)V

    .line 970
    iget-object v0, p0, Lcom/android/common/aa;->akT:Lcom/android/common/ActivityBase;

    invoke-static {v0}, Lcom/android/common/ActivityBase;->avS(Lcom/android/common/ActivityBase;)V

    goto :goto_18

    .line 974
    :pswitch_2e
    iget-object v0, p0, Lcom/android/common/aa;->akT:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->auO()V

    goto :goto_18

    .line 978
    :pswitch_34
    iget-object v0, p0, Lcom/android/common/aa;->akT:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->auF()V

    goto :goto_18

    .line 965
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_34
        :pswitch_2e
        :pswitch_19
    .end packed-switch
.end method

.method public nU()V
    .registers 1

    .prologue
    .line 955
    return-void
.end method
