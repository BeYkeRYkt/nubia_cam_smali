.class public Lcom/android/camera/CameraButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .prologue
    const v6, 0x7f0a02d0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "visitor"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_13

    .line 48
    return-void

    .line 49
    :cond_13
    const-string/jumbo v2, "cn.nubia.v5light.preset"

    invoke-static {v2, p1}, Lcom/android/common/h;->apR(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 50
    const v0, 0x7f0a02d1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 51
    return-void

    .line 54
    :cond_27
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v2

    .line 55
    new-instance v3, Lcom/android/common/setting/e;

    invoke-direct {v3, p1}, Lcom/android/common/setting/e;-><init>(Landroid/content/Context;)V

    .line 56
    const-string/jumbo v4, "pref_camera_id_key"

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 59
    :try_start_3e
    invoke-virtual {v2, v3}, Lcom/android/common/cameradevice/m;->Nd(I)Lcom/android/common/cameradevice/j;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_55
    .catchall {:try_start_3e .. :try_end_41} :catchall_64

    move-result-object v4

    if-nez v4, :cond_45

    move v0, v1

    .line 65
    :cond_45
    if-eqz v0, :cond_66

    .line 66
    invoke-static {p1}, Lcom/android/common/h;->apG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 67
    invoke-static {p1, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 69
    :cond_54
    return-void

    .line 62
    :catch_55
    move-exception v0

    .line 66
    invoke-static {p1}, Lcom/android/common/h;->apG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 67
    invoke-static {p1, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 69
    :cond_63
    return-void

    .line 64
    :catchall_64
    move-exception v0

    throw v0

    .line 74
    :cond_66
    invoke-virtual {v2, v3}, Lcom/android/common/cameradevice/m;->Nb(I)V

    .line 75
    invoke-virtual {v2, v3}, Lcom/android/common/cameradevice/m;->Nc(I)V

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    const-class v2, Lcom/android/camera/Camera;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 78
    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    const-string/jumbo v2, "is_camera_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    return-void
.end method
