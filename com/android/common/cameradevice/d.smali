.class public Lcom/android/common/cameradevice/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static MO:Lcom/android/common/cameradevice/d;

.field private static final MS:Ljava/util/HashMap;


# instance fields
.field private MP:Lcom/android/common/cameradevice/r;

.field private MQ:Landroid/content/Context;

.field private MR:Lcom/android/common/cameradevice/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/android/common/cameradevice/d;->MO:Lcom/android/common/cameradevice/d;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    sput-object v0, Lcom/android/common/cameradevice/d;->MS:Ljava/util/HashMap;

    .line 17
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/android/common/cameradevice/d;->MP:Lcom/android/common/cameradevice/r;

    .line 23
    iput-object v0, p0, Lcom/android/common/cameradevice/d;->MR:Lcom/android/common/cameradevice/b;

    .line 24
    iput-object v0, p0, Lcom/android/common/cameradevice/d;->MQ:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public static JO()Lcom/android/common/cameradevice/d;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/common/cameradevice/d;->MO:Lcom/android/common/cameradevice/d;

    if-nez v0, :cond_b

    .line 110
    new-instance v0, Lcom/android/common/cameradevice/d;

    invoke-direct {v0}, Lcom/android/common/cameradevice/d;-><init>()V

    sput-object v0, Lcom/android/common/cameradevice/d;->MO:Lcom/android/common/cameradevice/d;

    .line 113
    :cond_b
    sget-object v0, Lcom/android/common/cameradevice/d;->MO:Lcom/android/common/cameradevice/d;

    return-object v0
.end method


# virtual methods
.method public JP()Lcom/android/common/cameradevice/r;
    .registers 6

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/common/cameradevice/d;->MP:Lcom/android/common/cameradevice/r;

    if-eqz v0, :cond_7

    .line 60
    iget-object v0, p0, Lcom/android/common/cameradevice/d;->MP:Lcom/android/common/cameradevice/r;

    return-object v0

    .line 62
    :cond_7
    iget-object v0, p0, Lcom/android/common/cameradevice/d;->MQ:Landroid/content/Context;

    const v1, 0x7f0a0113

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    sget-object v0, Lcom/android/common/cameradevice/d;->MS:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 65
    if-nez v0, :cond_30

    .line 68
    :try_start_1a
    iget-object v0, p0, Lcom/android/common/cameradevice/d;->MQ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 69
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 70
    sget-object v2, Lcom/android/common/cameradevice/d;->MS:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_30
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/cameradevice/r;
    :try_end_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1a .. :try_end_39} :catch_70
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_39} :catch_55
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_39} :catch_3a

    return-object v0

    .line 77
    :catch_3a
    move-exception v0

    .line 78
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "While create instance of"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 75
    :catch_55
    move-exception v0

    .line 76
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No such class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 73
    :catch_70
    move-exception v0

    .line 74
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error inflating class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public JQ(Landroid/hardware/Camera;)Lcom/android/common/cameradevice/e;
    .registers 7

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/common/cameradevice/d;->MQ:Landroid/content/Context;

    const v1, 0x7f0a0112

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 36
    sget-object v0, Lcom/android/common/cameradevice/d;->MS:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 38
    if-nez v0, :cond_2e

    .line 41
    :try_start_13
    iget-object v0, p0, Lcom/android/common/cameradevice/d;->MQ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 43
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/hardware/Camera;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 45
    sget-object v2, Lcom/android/common/cameradevice/d;->MS:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_2e
    const-string/jumbo v2, "AdapterUtil"

    const-string/jumbo v3, "createCameraDeviceEx"

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/cameradevice/e;
    :try_end_43
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_43} :catch_7a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_43} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_43} :catch_44

    return-object v0

    .line 53
    :catch_44
    move-exception v0

    .line 54
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "While create instance of"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 51
    :catch_5f
    move-exception v0

    .line 52
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No such class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 49
    :catch_7a
    move-exception v0

    .line 50
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error inflating class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public JR()Lcom/android/common/cameradevice/b;
    .registers 6

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/common/cameradevice/d;->MR:Lcom/android/common/cameradevice/b;

    if-eqz v0, :cond_7

    .line 85
    iget-object v0, p0, Lcom/android/common/cameradevice/d;->MR:Lcom/android/common/cameradevice/b;

    return-object v0

    .line 87
    :cond_7
    iget-object v0, p0, Lcom/android/common/cameradevice/d;->MQ:Landroid/content/Context;

    const v1, 0x7f0a0114

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    sget-object v0, Lcom/android/common/cameradevice/d;->MS:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 90
    if-nez v0, :cond_30

    .line 93
    :try_start_1a
    iget-object v0, p0, Lcom/android/common/cameradevice/d;->MQ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 94
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 95
    sget-object v2, Lcom/android/common/cameradevice/d;->MS:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_30
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/cameradevice/b;
    :try_end_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1a .. :try_end_39} :catch_70
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_39} :catch_55
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_39} :catch_3a

    return-object v0

    .line 102
    :catch_3a
    move-exception v0

    .line 103
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "While create instance of"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 100
    :catch_55
    move-exception v0

    .line 101
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No such class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 98
    :catch_70
    move-exception v0

    .line 99
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error inflating class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public JS(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/common/cameradevice/d;->MQ:Landroid/content/Context;

    .line 30
    return-void
.end method
