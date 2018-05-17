.class public Lcom/android/multiexposure/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final aqB:I

.field public static final aqC:I

.field public static final aqD:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    const/16 v0, 0x42

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/multiexposure/n;->aqC:I

    .line 32
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/multiexposure/n;->aqB:I

    .line 33
    sget v0, Lcom/android/multiexposure/n;->aqC:I

    sget v1, Lcom/android/multiexposure/n;->aqB:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/multiexposure/n;->aqD:I

    .line 25
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aCA(Lcom/android/common/appService/W;)Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method public static aCy(Lcom/android/common/appService/W;ILcom/android/multiexposure/m;)Lcom/android/multiexposure/c;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 37
    const-string/jumbo v0, "MultiExposureUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wq createMultiExposure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    if-nez p0, :cond_27

    .line 40
    const-string/jumbo v0, "MultiExposureUtil"

    const-string/jumbo v1, "wq createMultiExposure appService == null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-object v3

    .line 43
    :cond_27
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-nez v0, :cond_37

    .line 44
    const-string/jumbo v0, "MultiExposureUtil"

    const-string/jumbo v1, "wq createMultiExposure appService.getCameraDevice() == null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-object v3

    .line 50
    :cond_37
    const-string/jumbo v0, "MultiExposureUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "==wq==createMultiExposure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {p0, p1}, Lcom/android/multiexposure/n;->aCz(Lcom/android/common/appService/W;I)Lcom/android/multiexposure/c;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p2}, Lcom/android/multiexposure/c;->aCh(Lcom/android/multiexposure/m;)V

    .line 54
    return-object v0
.end method

.method public static aCz(Lcom/android/common/appService/W;I)Lcom/android/multiexposure/c;
    .registers 6

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    packed-switch p1, :pswitch_data_34

    .line 84
    :goto_4
    :pswitch_4
    return-object v0

    .line 62
    :pswitch_5
    new-instance v0, Lcom/android/multiexposure/l;

    invoke-direct {v0, p0}, Lcom/android/multiexposure/l;-><init>(Lcom/android/common/appService/W;)V

    goto :goto_4

    .line 65
    :pswitch_b
    new-instance v0, Lcom/android/multiexposure/k;

    invoke-direct {v0, p0}, Lcom/android/multiexposure/k;-><init>(Lcom/android/common/appService/W;)V

    .line 66
    invoke-static {p0}, Lcom/android/multiexposure/n;->aCA(Lcom/android/common/appService/W;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 67
    const-string/jumbo v2, "multi_exposure_parameter"

    const/16 v3, 0x32

    .line 66
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/multiexposure/c;->setParameter(I)V

    goto :goto_4

    .line 70
    :pswitch_21
    new-instance v0, Lcom/android/multiexposure/a;

    invoke-direct {v0, p0}, Lcom/android/multiexposure/a;-><init>(Lcom/android/common/appService/W;)V

    goto :goto_4

    .line 73
    :pswitch_27
    new-instance v0, Lcom/android/multiexposure/g;

    invoke-direct {v0, p0}, Lcom/android/multiexposure/g;-><init>(Lcom/android/common/appService/W;)V

    goto :goto_4

    .line 79
    :pswitch_2d
    new-instance v0, Lcom/android/multiexposure/h;

    invoke-direct {v0, p0}, Lcom/android/multiexposure/h;-><init>(Lcom/android/common/appService/W;)V

    goto :goto_4

    .line 60
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_5
        :pswitch_b
        :pswitch_4
        :pswitch_21
        :pswitch_27
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method
